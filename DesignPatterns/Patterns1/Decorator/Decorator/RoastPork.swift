//
//  RoastPork.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/06.
//

/// チャーシュー
final class RoastPork: Decorator {
    /// 品目にチャーシューを追加
    /// - Returns: String
    override func getDescription() -> String {
        return menu.getDescription() + "、チャーシュー"
    }

    /// 料金 + 100円
    /// - Returns: Int
    override func cost() -> Int {
        return menu.cost() + 100
    }
}
