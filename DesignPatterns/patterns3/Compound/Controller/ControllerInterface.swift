//
//  ControllerInterface.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

/// Controller用プロトコル
protocol ControllerInterface {
    /// 再生
    func start()
    /// 停止
    func stop()
    /// BPMを増加する
    func increaseBPM()
    /// BPMを減少する
    func decreaseBPM()
    /// BPMを設定する
    /// - Parameter bpm: BPM
    func setBPM(with bpm: Int)
}
