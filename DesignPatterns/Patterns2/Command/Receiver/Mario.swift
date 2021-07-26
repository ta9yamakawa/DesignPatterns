//
//  Mario.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/27.
//

/// マリオ
final class Mario: Receiver {
    var name: String = "マリオ"
    
    func action(_ commandName: String) {
        print("マリオはコマンド：\(commandName)を受け付けました。")
    }
}
