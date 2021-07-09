//
//  Okonomiyaki.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/09.
//

/// お好み焼き
protocol Okonomiyaki {
    /// 品目
    var name: String { get set }

}

extension Okonomiyaki {
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
