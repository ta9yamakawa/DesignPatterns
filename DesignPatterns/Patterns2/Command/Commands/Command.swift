//
//  Command.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/16.
//

/// Commandプロトコル
protocol Command {
    /// レシーバー
    var receiver: Receiver { get }
    /// 実行
    func execute()
}
