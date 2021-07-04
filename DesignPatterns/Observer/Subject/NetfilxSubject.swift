//
//  NetfilxSubject.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/04.
//

/// ネットフリックスのデータ
final class NetfilxSubject: Subject {
    /// 購読者のリスト
    private var observers: [Observer] = []

    /// 作品名
    private var title: String?

    /// 第何話
    private var episode: Int?

    func add(observer: Observer) {
        if !observers.contains(where: {$0.name == observer.name}) {
            observers.append(observer)
        } else {
            print("既に購読しています。")
        }
    }

    func remove(observer: Observer) {
        guard let index = observers.firstIndex(where: {$0.name == observer.name}) else {
            print("既に購読していません")
            return
        }
        observers.remove(at: index)
    }

    func notify() {
        guard
            let title = title,
            let episode = episode else {
            return
        }

        if observers.isEmpty {
            print("誰も購読していません")
        } else {
            for observer in observers {
                observer.update(with: title, episode: episode)
            }
        }
    }

    /// 作品のデータを用意
    /// - Parameters:
    ///   - title: 作品名
    ///   - episode: 話数（第何話か）
    func setNewData(with title: String, episode: Int) {
        self.title = title
        self.episode = episode

        // オブザーバーに通知
        notify()
    }
}
