//
//  FactoryViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/08.
//

import UIKit

final class FactoryViewController: UIViewController {

    let kansaiOkonomiyakiStore = KansaiOkonimiyakiStore()
    let hiroshimaOkonomiyakiStore = HiroshimaOkonomiyakiStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        var okonomiyaki = kansaiOkonomiyakiStore.create(type: .mix)

        print(okonomiyaki.getName())

        okonomiyaki = hiroshimaOkonomiyakiStore.create(type: .cheese)

        print(okonomiyaki.getName())
    }
}
