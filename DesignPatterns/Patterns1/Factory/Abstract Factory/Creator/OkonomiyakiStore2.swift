//
//  OkonomiyakiStore2.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// お好み焼き店2号店（Abstract Factory対応）
protocol OkonomiyakiStore2 {
    /// お好み焼きを作成
    /// - Parameter type: トッピング
    func create(type: Topping) -> Okonomiyaki2
}

extension OkonomiyakiStore2 {
    /// 注文されたお好み焼きを焼き上げる
    /// - Parameter type: トッピング
    func order(type: Topping) -> Okonomiyaki2 {

        let okonomiyaki = create(type: type)

        okonomiyaki.prepare()
        okonomiyaki.mix()
        okonomiyaki.bake()

        return okonomiyaki
    }
}

