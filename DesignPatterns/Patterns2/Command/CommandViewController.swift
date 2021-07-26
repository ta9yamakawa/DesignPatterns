//
//  CommandViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/16.
//

import UIKit

/// CommandViewController
final class CommandViewController: UIViewController {
    /// Invoker
    private let invoker = CommandInvoker()
    /// Receivers
    private let mario = Mario()
    private let luigi = Luigi()
}

private extension CommandViewController {
    @IBAction func didTapJumpButton(_ sender: Any) {
        let jump = JumpCommand(receiver: mario)
        let fireball = FireballCommand(receiver: luigi)
        action(with: jump)
        action(with: fireball)
    }

    @IBAction func didTapFireballButton(_ sender: Any) {
        let fireball = FireballCommand(receiver: mario)
        let jump = JumpCommand(receiver: luigi)
        action(with: fireball)
        action(with: jump)
    }

    @IBAction func didTapSpecialCommand(_ sender: Any) {
        let jump = JumpCommand(receiver: mario)
        let fireball = FireballCommand(receiver: mario)
        action(with: jump)
        action(with: fireball)
    }

    /// コマンドを実行する
    /// - Parameter command: Command
    func action(with command: Command) {
        invoker.addCommand(with: command)
        invoker.execute()
        // 別のコマンドを実行時のために登録したコマンドを削除しておく
        invoker.removeAllCommands()
    }
}
