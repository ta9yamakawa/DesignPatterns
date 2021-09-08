//
//  DJView.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

import UIKit

/// DJビュー
final class DJView: UIView, BPMObserver {

    // MARK: Variables

    var name: String = "DJ"

    /// Controller
    private var controller: ControllerInterface?

    // MARK: Constants

    /// Model
    private let model = BPMModel()

    // MARK: Outlets
    /// BPMラベル
    @IBOutlet private weak var bpmLabel: UILabel!
    /// BPM入力欄
    @IBOutlet private weak var bpmInputField: UITextField!
    /// BPM減少ボタン
    @IBOutlet private weak var decreaseButton: UIButton!
    /// BPM増加ボタン
    @IBOutlet private weak var increaseButton: UIButton!
    /// 再生ボタン
    @IBOutlet private weak var startButton: UIButton!
    /// 停止ボタン
    @IBOutlet private weak var stopButton: UIButton!
    /// 設定ボタン
    @IBOutlet private weak var setButton: UIButton!


    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initialize()
    }

    func updateBPM() {
        let bpm = model.getBPM()
        if bpm == 0 {
            bpmLabel.text = "停止中"
        } else {
            bpmLabel.text = String(bpm)
        }
    }
}

// MARK: Private Methods
private extension DJView {

    /// Viewの構築
    func initialize() {
        guard let view = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)),
                                                                  owner: self,
                                                                  options: nil)?.first as? UIView else {
            return
        }
        view.frame = self.bounds
        self.addSubview(view)

        controller = BPMController(model: model)
        model.registerObserver(self as BPMObserver)

        configureButtons(isPlaying: false)
    }

    /// ボタンの設定
    /// - Parameter isPlaying: 再生中かどうか
    func configureButtons(isPlaying: Bool) {
        if isPlaying {
            startButton.isEnabled = false
            stopButton.isEnabled = true
            increaseButton.isEnabled = true
            decreaseButton.isEnabled = true
            setButton.isEnabled = true
        } else {
            startButton.isEnabled = true
            stopButton.isEnabled = false
            increaseButton.isEnabled = false
            decreaseButton.isEnabled = false
            setButton.isEnabled = false
        }
    }

    // MARK: Actions

    @IBAction func didTapSetBPMButton(_ sender: Any) {
        guard
            let controller = controller,
            let bpmText = bpmInputField.text,
            let bpm = Int(bpmText) else {
            return
        }
        controller.setBPM(with: bpm)
        bpmInputField.endEditing(true)
    }

    @IBAction func didTapDecreaseButton(_ sender: Any) {
        guard let controller = controller else {
            return
        }
        controller.decreaseBPM()
    }

    @IBAction func didTapIncreaseButton(_ sender: Any) {
        guard let controller = controller else {
            return
        }
        controller.increaseBPM()
    }

    @IBAction func didTapStartButton(_ sender: Any) {
        guard let controller = controller else {
            return
        }
        controller.start()
        configureButtons(isPlaying: true)
    }

    @IBAction func didTapStopButton(_ sender: Any) {
        guard let controller = controller else {
            return
        }
        controller.stop()
        configureButtons(isPlaying: false)
    }
}
