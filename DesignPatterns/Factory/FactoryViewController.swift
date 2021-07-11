//
//  FactoryViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/08.
//

import UIKit

/// Factory Methodパターン（Abstract Factoryパターン）
final class FactoryViewController: UIViewController {
    /// お好み焼き店舗
    var okonomiyakiStore: OkonomiyakiStore?
    /// お好み焼き店舗2号店（Abstract Factory対応）
    var okonomiyakiStore2: OkonomiyakiStore2?
    /// お好み焼きスイッチ
    @IBOutlet private weak var okonomiyakiStyleSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // どちらかを使用
//        okonomiyakiStore = KansaiOkonimiyakiStore()
        okonomiyakiStore2 = KansaiOkonimiyakiStore2()
    }
}

// MARK: Private Methods
private extension FactoryViewController {
    @IBAction func didSwitchOkonomiyakiStyle(_ sender: Any) {
//        okonomiyakiStore = okonomiyakiStyleSwitch.isOn ? KansaiOkonimiyakiStore() : HiroshimaOkonomiyakiStore()
        okonomiyakiStore2 = okonomiyakiStyleSwitch.isOn ? KansaiOkonimiyakiStore2() : HiroshimaOkonomiyakiStore2()
    }

    @IBAction func didTapMixedButton(_ sender: Any) {
        order(with: .mix)
    }

    @IBAction func didTapCheeseButton(_ sender: Any) {
        order(with: .cheese)
    }

    @IBAction func didTapMentaikoButton(_ sender: Any) {
        order(with: .mentaiko)
    }

    /// お好み焼きを注文
    /// - Parameter topping: トッピング
    func order(with topping: Topping) {
//        guard let store = okonomiyakiStore else {
        guard let store = okonomiyakiStore2 else {
            return
        }

        let okonomiyaki = store.order(type: topping)

        print(okonomiyaki.getName() + "の完成です！")
    }
}
