//
//  BPMController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

import Foundation

/// BPM Controller
final class BPMController: ControllerInterface {

    /// Model
    private let model: BPMModelInterface

    init(model: BPMModelInterface) {
        self.model = model
    }

    func start() {
        model.on()
    }

    func stop() {
        model.off()
    }

    func increaseBPM() {
        let bpm = model.getBPM()
        model.setBPM(with: bpm + 1)
    }

    func decreaseBPM() {
        let bpm = model.getBPM()
        model.setBPM(with: bpm - 1)
    }

    func setBPM(with bpm: Int) {
        model.setBPM(with: bpm)
    }
}
