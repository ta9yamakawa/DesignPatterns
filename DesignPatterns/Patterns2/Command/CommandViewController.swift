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
        let marioJumpCommand = JumpCommand(receiver: mario)
        let luigiJumpCommand = JumpCommand(receiver: luigi)
        action(with: marioJumpCommand)
        action(with: luigiJumpCommand)
    }

    @IBAction func didTapFireballButton(_ sender: Any) {
        let marioFireballCommand = FireballCommand(receiver: mario)
        let luigiFireballCommand = FireballCommand(receiver: luigi)
        action(with: marioFireballCommand)
        action(with: luigiFireballCommand)
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
        // 別のコマンドを実行したときのため登録したコマンドを削除しておく
        invoker.removeAllCommands()
    }
}
