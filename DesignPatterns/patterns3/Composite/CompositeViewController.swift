//
//  CompositeViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/30.
//

import UIKit

/// CompositeViewController
final class CompositeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupFamily()
    }
}

private extension  CompositeViewController {
    /// 家族の設定
    func setupFamily() {
        let tanakaFamily = Family(familyName: "田中")
        tanakaFamily.family.append(Person(name: "田中一郎"))
        tanakaFamily.family.append(Person(name: "田中二郎"))
        tanakaFamily.family.append(Person(name: "田中三郎"))

        let suzukiFamily = Family(familyName: "鈴木")
        suzukiFamily.family.append(Person(name: "鈴木一花"))
        suzukiFamily.family.append(Person(name: "鈴木ニ菜"))
        suzukiFamily.family.append(Person(name: "鈴木三春"))
        // 婿入り
        let satoFamily = Family(familyName: "佐藤(旧姓)")
        satoFamily.family.append(Person(name: "佐藤一"))
        suzukiFamily.family.append(satoFamily)

        tanakaFamily.listUp()
        print("=============")
        suzukiFamily.listUp()
        print("=============")
    }
}
