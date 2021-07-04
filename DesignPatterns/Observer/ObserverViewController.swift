//
//  ObserverViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/04.
//

import UIKit

/// ObserverViewController
final class ObserverViewController: UIViewController {

    /// Subject
    private let subject = NetfilxSubject()

    /// John
    private var john: John?

    /// Paul
    private var paul: Paul?

    /// 作品集
    private let titleMock = ["全裸監督", "ストレンジャー・シングス", "愛の不時着", "梨泰院クラス"]
}

// MARK: Private Methods
private extension ObserverViewController {

    // MARK: Netflix Update
    @IBAction func didTapUpdateEpisode(_ sender: Any) {

        print("New Episode Released！")

        // 今回は適当にエピソードを発行する
        let title = titleMock.randomElement() ?? "No Data"
        let episode = Int.random(in: 1..<10)
        subject.setNewData(with: title, episode: episode)
    }

    // MARK: John's Actions
    @IBAction func didTapJohnRegister(_ sender: Any) {
        john = John(with: subject)
    }

    @IBAction func didTapJohnRemove(_ sender: Any) {
        guard let observer = john else {
            return
        }
        subject.remove(observer: observer)
    }

    // MARK: Paul's Actions
    @IBAction func didTapPaulRegister(_ sender: Any) {
        paul = Paul(with: subject)
    }

    @IBAction func didTapPaulRemove(_ sender: Any) {
        guard let observer = paul else {
            return
        }
        subject.remove(observer: observer)
    }
}
