//
//  Command.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/16.
//

/// Commandプロトコル
protocol Command: AnyObject {
    /// 実行
    func execute()
}
