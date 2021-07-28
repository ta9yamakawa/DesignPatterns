//
//  Luigi.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/27.
//

/// ルイージ
final class Luigi: Receiver {
    var name: String = "ルイージ"

    func action(by commandType: CommandType) {
        let commandText: String
        switch commandType {
        case .A:
            commandText = "ボッ"
        case .B:
            commandText = "プーン"
        }
        print("\(name)「\(commandText)」")
    }
}
