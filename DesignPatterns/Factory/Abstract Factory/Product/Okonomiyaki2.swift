//
//  Okonomiyaki2.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// お好み焼き
protocol Okonomiyaki2 {
    /// 品目
    var name: String { get set }

    // 以下、Abstract Factory用
    /// ソース
    var sauce: Sauce? { get set }

    /// 食材を取得する
    func getFoodstuff()
}

extension Okonomiyaki2 {
    /// 下処理
    func prepare() {
        print("下処理")
    }

    /// 食材を混ぜる
    func mix() {
        print("混ぜる")
    }

    /// 鉄板で焼く
    func bake() {
        print("焼く")
    }

    /// 品目を取得
    func getName() -> String {
        return name
    }
}

