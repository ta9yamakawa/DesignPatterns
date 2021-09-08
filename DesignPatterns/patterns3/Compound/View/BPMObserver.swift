//
//  BPMObserver.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

/// BPMObserver
protocol BPMObserver {
    /// 名前（本来必要ではないが、indexを取得するためにとりあえず用意した）
    var name: String { get }
    /// BPMを更新
    func updateBPM()
}
