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

    @IBAction func didTapObserverButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ObserverViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? ObserverViewController else {
            return
        }
        present(viewController, animated: true)
    }

    @IBAction func didTapDecoratorButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "DecoratorViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? DecoratorViewController else {
            return
        }
        present(viewController, animated: true)
    }

    @IBAction func didTapFactoryButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "FactoryViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? FactoryViewController else {
            return
        }
        present(viewController, animated: true)
    }

    @IBAction func didTapSingletonButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SingletonViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? SingletonViewController else {
            return
        }
        present(viewController, animated: true)
    }

    @IBAction func didTapSingleton2Button(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Singleton2ViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? Singleton2ViewController else {
            return
        }
        present(viewController, animated: true)
    }

    @IBAction func didTapCommandButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "CommandViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? CommandViewController else {
            return
        }
        present(viewController, animated: true)
    }

    @IBAction func didTapAdoptorButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "AdaptorViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? AdaptorViewController else {
            return
        }
        present(viewController, animated: true)
    }

    @IBAction func didTapFacadeButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "FacadeViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? FacadeViewController else {
            return
        }
        present(viewController, animated: true)
    }

    @IBAction func didTapTemplateMethod(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TemplateMethodViewController", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? TemplateMethodViewController else {
            return
        }
        present(viewController, animated: true)
    }
    
}

