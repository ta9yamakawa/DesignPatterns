//
//  FireballCommand.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/16.
//

/// ダッシュコマンド
final class FireballCommand: Command {
    var receiver: Receiver

    init(receiver: Receiver) {
        self.receiver = receiver
    }

    func execute() {
        receiver.action(by: .B)
    }
}
