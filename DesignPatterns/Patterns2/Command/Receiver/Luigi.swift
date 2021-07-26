//
//  Luigi.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/27.
//

/// ルイージ
final class Luigi: Receiver {
    var name: String = "ルイージ"

    func action(_ commandName: String) {
        print("ルイージはコマンド：\(commandName)を受け付けました。")
    }
}
