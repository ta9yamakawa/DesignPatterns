//
//  DecoratorViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/06.
//

import UIKit

/// DecoratorViewController
final class DecoratorViewController: UIViewController {
    /// 煮卵スイッチ
    @IBOutlet private weak var seasonedEggSwitch: UISwitch!

    /// 海苔スイッチ
    @IBOutlet private weak var seaweedSwitch: UISwitch!

    /// チャーシュースイッチ
    @IBOutlet private weak var roastPorkSwitch: UISwitch!
}

private extension DecoratorViewController {
    @IBAction func didTapCalculateButton(_ sender: Any) {
        var menu: Menu = Ramen()
        if seasonedEggSwitch.isOn {
            menu = SeasonedEgg(menu)
        }

        if seaweedSwitch.isOn {
            menu = Seaweed(menu)
        }

        if roastPorkSwitch.isOn {
            menu = RoastPork(menu)
        }

        print(menu.getDescription() + "で合計は\(menu.cost())円になります。")
    }
}
