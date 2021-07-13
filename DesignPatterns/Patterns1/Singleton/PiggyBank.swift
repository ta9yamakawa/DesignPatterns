//
//  PiggyBank.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/14.
//

/// 豚の貯金箱（シングルトンクラス）
final class PiggyBank {
    /// シングルトンインスタンス
    static let shared = PiggyBank()
    /// 貯金額
    private var price = 0

    private init() {}

    /// 貯金額を更新（500円貯金）
    func updatePrice() {
        self.price += 500
    }

    /// 貯金額を取得
    /// - Returns: Int
    func getPrice() -> Int {
        return price
    }
}
