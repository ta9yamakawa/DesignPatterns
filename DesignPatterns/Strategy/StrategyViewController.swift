//
//  StrategyViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/06/25.
//

import UIKit

/// Strategyパターン
final class StrategyViewController: UIViewController {
    // MARK: Constants
    /// ピカチュウ
    private let pikachu = Pikachu()
    /// リザードン
    private let charizard = Charizard()

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        fly()
    }


    @IBAction private func didTapBackButton(_ sender: Any) {
        dismiss(animated: true)
    }
}

// MARK: Private Methods
private extension StrategyViewController {
    /// それぞれのポケモンに飛行タイプを指定
    func setup() {
        pikachu.setFlyType(with: .noFly)
//        pikachu.setFlyType(with: .ballon)
        charizard.setFlyType()
    }

    /// 飛行
    func fly() {
        pikachu.fly()
        charizard.fly()
    }


}
