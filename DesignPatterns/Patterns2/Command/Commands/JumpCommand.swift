//
//  JumpCommand.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/16.
//

/// パンチコマンド
final class JumpCommand: Command {
    var receiver: Receiver

    init(receiver: Receiver) {
        self.receiver = receiver
    }

    func execute() {
        receiver.action("ジャンプ")
        print("\(receiver.name)「プーン」")
    }
}
