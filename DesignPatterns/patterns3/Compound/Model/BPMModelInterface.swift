//
//  BPMModelInterface.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

/// Model用プロトコル
protocol BPMModelInterface {
    /// 再生
    func on()
    /// 停止
    func off()
    /// BPMを設定
    /// - Parameter bpm: BPM
    func setBPM(with bpm: Int)
    /// BPMを取得
    func getBPM() -> Int
    /// オブザーバーを登録
    /// - Parameter observer: BPMObserver
    func registerObserver(_ observer: BPMObserver)
    /// オブザーバーを削除
    /// - Parameter observer: BPMController
    func removeObserver(_ observer: BPMObserver)
}
