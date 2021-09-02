//
//  StateViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/02.
//

import UIKit

/// StateViewController
final class StateViewController: UIViewController {

    // MARK: Constants
    /// 停車状態
    private let parkingState = ParkingState()
    /// 戻る状態
    private let backState = BackState()
    /// 走行状態
    private let runningState = RunningState()

    // MARK: Variables
    /// 状態フラグ（初期値は停車状態）
    private var state: State = ParkingState()

    // MARK: Outlets
    /// 駐車ボタン
    @IBOutlet weak var parkingButton: UIButton!
    /// バックボタン
    @IBOutlet weak var backButton: UIButton!
    /// 運転ボタン
    @IBOutlet weak var driveButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
}

private extension StateViewController {

    @IBAction func didTapParkingButton(_ sender: Any) {
        setState(with: parkingState)
        parkingButton.backgroundColor = .yellow
        backButton.backgroundColor = .systemGray5
        driveButton.backgroundColor = .systemGray5
    }

    @IBAction func didTapBackButton(_ sender: Any) {
        setState(with: backState)
        parkingButton.backgroundColor = .systemGray5
        backButton.backgroundColor = .yellow
        driveButton.backgroundColor = .systemGray5
    }
    
    @IBAction func didTapDriveButton(_ sender: Any) {
        setState(with: runningState)
        parkingButton.backgroundColor = .systemGray5
        backButton.backgroundColor = .systemGray5
        driveButton.backgroundColor = .yellow
    }

    @IBAction func didTapBreakButton(_ sender: Any) {
        state.stop()
    }

    @IBAction func didTapRunButton(_ sender: Any) {
        state.run()
    }

    /// 準備
    func setup() {
        parkingButton.backgroundColor = .yellow
        setState(with: parkingState)
    }

    /// 状態をセット
    /// - Parameter state: State
    func setState(with state: State) {
        self.state = state
    }
}
