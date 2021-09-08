//
//  State.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/03.
//

/// 状態プロトコル
protocol State {
    /// アクセル
    func run()
    /// ブレーキ
    func stop()
}
