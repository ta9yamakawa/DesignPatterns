//
//  SingletonViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/14.
//

import UIKit

/// SingletonViewController
final class SingletonViewController: UIViewController {
    /// シングルトン貯金箱
    private let bank = PiggyBank.shared

    @IBAction private func didTapSavingButton(_ sender: Any) {
        bank.updatePrice()
        print("俺の貯金箱からの貯金で、累計：\(bank.getPrice())円になりました。")
    }
}
