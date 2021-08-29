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

        initializeFamily()
    }
}

private extension  CompositeViewController {
    func initializeFamily() {
        let tanakaFamily = Family(familyName: "田中")
        tanakaFamily.family.append(Person(name: "田中一郎"))
        tanakaFamily.family.append(Person(name: "田中二郎"))
        tanakaFamily.family.append(Person(name: "田中三郎"))

        let suzukiFamily = Family(familyName: "鈴木")
        suzukiFamily.family.append(Person(name: "鈴木一花"))
        suzukiFamily.family.append(Person(name: "鈴木ニ菜"))
        suzukiFamily.family.append(Person(name: "鈴木三春"))

        tanakaFamily.listUp()
        suzukiFamily.listUp()
    }
}
