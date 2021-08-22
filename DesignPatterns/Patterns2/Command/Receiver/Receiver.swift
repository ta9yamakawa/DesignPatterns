//
//  Receiver.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/27.
//

/// レシーバー
protocol Receiver {
    /// 名前
    var name: String { get }
    /// 実行
    /// - Parameter commandType: コマンドタイプ
    func action(by commandType: CommandType)
}
