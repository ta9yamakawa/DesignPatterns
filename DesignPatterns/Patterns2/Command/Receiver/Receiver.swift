//
//  Receiver.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/27.
//

/// レシーバー
protocol Receiver: AnyObject {
    /// 名前
    var name: String { get }
    /// 実行
    /// - Parameter commandName: コマンド名
    func action(_ commandName: String)
}
