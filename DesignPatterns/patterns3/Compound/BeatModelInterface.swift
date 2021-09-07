//
//  BeatModelInterface.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

/// BeatModelプロトコル
protocol BeatModelInterface {
    func on()
    func off()
    func setBPM(with bpm: Int)
    func getBPM() -> Int
    func registerObserver(_ observer: BeatObserver)
    func removeObserver(_ observer: BeatObserver)
    func registerObserver(_ observer: BPMObserver)
    func removeObserver(_ observer: BPMObserver)
}
