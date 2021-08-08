//
//  AdaptorViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/03.
//

import UIKit

/// AdaptorViewController
final class AdaptorViewController: UIViewController {

    /// 強打者
    let powerHitter = PowerHitter()

    /// 打者のアダプター
    var hitterAdaptor: BaseballPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
}

// MARK: Private Methods
private extension AdaptorViewController {

    /// Adaptor周りの設定
    func setup() {
        hitterAdaptor = PowerHitterAdaptor(player: powerHitter)
    }

    @IBAction func didTapHittingButton(_ sender: Any) {
        guard let adaptor = hitterAdaptor else {
            return
        }
        adaptor.hitting()
    }
}
