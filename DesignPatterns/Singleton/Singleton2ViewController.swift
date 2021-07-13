//
//  Singleton2ViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/14.
//

import UIKit

/// Singleton2ViewController
final class Singleton2ViewController: UIViewController {
    /// シングルトン貯金箱
    private let bank = PiggyBank.shared

    @IBAction private func didTapSavingButton(_ sender: Any) {
        bank.updatePrice()
        print("私の貯金箱からの貯金で、累計：\(bank.getPrice())円になりました。")
    }
}
