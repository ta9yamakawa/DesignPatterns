//
//  Component.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/06.
//

/// コンポーネント
class Menu {
    /// 品目
    var description: String = "メニュー"

    /// 品目を取得する
    /// - Returns: String
    func getDescription() -> String {
        return description
    }

    /// 料金を取得する
    func cost() -> Int {
        fatalError("注文するものが選択されていません")
    }
}
