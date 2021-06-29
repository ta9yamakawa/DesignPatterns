//
//  ViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/06/25.
//

import UIKit

/// 大元のViewController
class ViewController: UIViewController {

}

// MARK: Private Methods
private extension ViewController {
    @IBAction func didTapStrategyButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "StrategyViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? StrategyViewController else {
            return
        }
        present(viewController, animated: true)
    }
}

