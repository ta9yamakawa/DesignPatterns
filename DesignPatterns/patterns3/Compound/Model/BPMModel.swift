//
//  BPMModel.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

import Foundation

/// BeatModel
final class BPMModel: BPMModelInterface {

    /// BPM
    private var bpm = 90

    /// BPMオブザーバー配列
    private var bpmObservers = [BPMObserver]()

    func on() {
        setBPM(with: 90)
    }

    func off() {
        setBPM(with: 0)
    }

    func setBPM(with bpm: Int) {
        self.bpm = bpm
        notifyBPMObservers()
    }

    func getBPM() -> Int {
        return bpm
    }

    func registerObserver(_ observer: BPMObserver) {
        bpmObservers.append(observer)
    }

    func removeObserver(_ observer: BPMObserver) {
        guard let index = bpmObservers.firstIndex(where: { $0.name == observer.name }) else {
            return
        }
        bpmObservers.remove(at: index)
    }
}


// MARK: Private Methods
private extension BPMModel {
    /// BPMObserversに通知
    func notifyBPMObservers() {
        for observer in bpmObservers {
            observer.updateBPM()
        }
    }
}
