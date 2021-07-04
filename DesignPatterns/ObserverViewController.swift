//
//  ObserverViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/04.
//

import UIKit

/// ObserverViewController
final class ObserverViewController: UIViewController {

    private let subject = NetfilxSubject()

    /// John
    private let john = John()

    /// Paul
    private let paul = Paul()

    /// 作品集
    private let titleMock = ["全裸監督", "ストレンジャー・シングス", "愛の不時着", "梨泰院クラス"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: Private Methods
private extension ObserverViewController {

    // MARK: Netflix Update
    @IBAction func didTapUpdateEpisode(_ sender: Any) {
        // 今回は適当にエピソードを発行する
        let title = titleMock.randomElement() ?? "No Data"
        let episode = Int.random(in: 1..<10)
        subject.setNewData(with: title, episode: episode)
    }

    // MARK: John's Actions
    @IBAction func didTapJohnRegister(_ sender: Any) {
        subject.add(observer: john)
    }

    @IBAction func didTapJohnRemove(_ sender: Any) {
        subject.remove(observer: john)
    }

    // MARK: Paul's Actions
    @IBAction func didTapPaulRegister(_ sender: Any) {
        subject.add(observer: paul)
    }

    @IBAction func didTapPaulRemove(_ sender: Any) {
        subject.remove(observer: paul)
    }
}
