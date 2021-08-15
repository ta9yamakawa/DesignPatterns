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

    /// 投手のアダプター
    var pitcherAdaptor: BaseballPlayer?

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
        pitcherAdaptor = AcePitcherAdaptor()
    }

    @IBAction func didTapHittingButton(_ sender: Any) {
        guard let adaptor = hitterAdaptor else {
            return
        }
        adaptor.hitting()
        adaptor.throwing()
    }

    @IBAction func didTapThrowingButton(_ sender: Any) {
        guard let adaptor = pitcherAdaptor else {
            return
        }
        adaptor.hitting()
        adaptor.throwing()
    }
}
