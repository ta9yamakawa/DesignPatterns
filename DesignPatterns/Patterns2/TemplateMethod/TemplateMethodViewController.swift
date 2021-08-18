//
//  TemplateMethodViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/18.
//

import UIKit

/// TemplateMethodViewController
final class TemplateMethodViewController: UIViewController {
    /// 田中さん
    private let tanaka = Tanaka()
    /// 山田さん
    private let yamada = Yamada()
}

private extension TemplateMethodViewController {
    @IBAction func didTapTanakaButton(_ sender: Any) {
        tanaka.introduction()
    }


    @IBAction func didTapYamadaButton(_ sender: Any) {
        yamada.introduction()
    }
}
