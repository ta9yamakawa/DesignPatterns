//
//  CommandInvoker.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/16.
//

/// Command Invoker
final class CommandInvoker {
    /// コマンド配列
    private var commands: [Command] = []

    /// コマンドを追加する
    /// - Parameter command: Command
    func addCommand(with command: Command) {
        commands.append(command)
    }

    /// コマンドを全て削除する
    func removeAllCommands() {
        commands.removeAll()
    }

    /// コマンドを追加する
    func execute() {
        for command in commands {
            command.execute()
        }
    }
}
