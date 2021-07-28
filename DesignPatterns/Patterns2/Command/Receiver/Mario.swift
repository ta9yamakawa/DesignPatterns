//
//  Mario.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/27.
//

/// マリオ
final class Mario: Receiver {
    var name: String = "マリオ"
    
    func action(by commandType: CommandType) {
        let commandText: String
        switch commandType {
        case .A:
            commandText = "プーン"
        case .B:
            commandText = "ボッ"
        }
        print("\(name)「\(commandText)」")
    }
}
