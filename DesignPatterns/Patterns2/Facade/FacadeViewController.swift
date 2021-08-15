//
//  FacadeViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/15.
//

import UIKit

/// FacadeViewController
final class FacadeViewController: UIViewController {
    /// スマートスピーカー
    private let smartSpeaker = SmartSpeaker()

    /// 家主のステータスを操作するスイッチ
    @IBOutlet private weak var toggleSwitch: UISwitch!

}

private extension FacadeViewController {
    @IBAction func didToggleSwitch(_ sender: Any) {
        if toggleSwitch.isOn {
            smartSpeaker.turnOnAllHomeAppliances()
        } else {
            smartSpeaker.turnOffAllHomeAppliances()
        }
    }
}
