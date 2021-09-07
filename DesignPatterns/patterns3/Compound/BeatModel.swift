//
//  BeatModel.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

import Foundation

/// BeatModel
final class BeatModel: BeatModelInterface {

    private var bpm = 90

    private var beatObservers = [BeatObserver]()

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

    func registerObserver(_ observer: BeatObserver) {
        beatObservers.append(observer)
    }

    func removeObserver(_ observer: BeatObserver) {
        guard let index = beatObservers.firstIndex(where: { $0.name == observer.name }) else {
            return
        }
        beatObservers.remove(at: index)
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
private extension BeatModel {

    func beatEvent() {
        notifyBeatObservers()
    }

    /// BeatObserversに通知
    func notifyBeatObservers() {
        for observer in beatObservers {
            observer.updateBeat()
        }
    }

    /// BPMObserversに通知
    func notifyBPMObservers() {
        for observer in bpmObservers {
            observer.updateBPM()
        }
    }
}
