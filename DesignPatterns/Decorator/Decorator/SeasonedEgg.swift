//
//  SeasonedEgg.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/06.
//

/// 煮卵
final class SeasonedEgg: Decorator {
    /// 品目に煮卵を追加
    /// - Returns: String
    override func getDescription() -> String {
        return menu.getDescription() + "、煮卵"
    }

    /// 料金 + 80円
    /// - Returns: Int
    override func cost() -> Int {
        return menu.cost() + 80
    }
}
