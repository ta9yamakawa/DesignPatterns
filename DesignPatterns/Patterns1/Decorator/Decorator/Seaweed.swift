//
//  Seaweed.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/06.
//

/// 海苔
final class Seaweed: Decorator {
    /// 品目に海苔を追加
    /// - Returns: String
    override func getDescription() -> String {
        return menu.getDescription() + "、海苔"
    }

    /// 料金 + 50円
    /// - Returns: Int
    override func cost() -> Int {
        return menu.cost() + 50
    }
}
