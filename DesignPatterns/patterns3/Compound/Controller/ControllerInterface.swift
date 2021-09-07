//
//  ControllerInterface.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

/// Controller用プロトコル
protocol ControllerInterface {
    func start()
    func stop()
    func increaseBPM()
    func decreaseBPM()
    func setBPM(with bpm: Int)
}
