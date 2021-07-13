//
//  OkonomiyakiStore.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/09.
//

/// お好み焼き店
protocol OkonomiyakiStore {
    /// お好み焼きを作成
    /// - Parameter type: トッピング
    func create(type: Topping) -> Okonomiyaki
}

extension OkonomiyakiStore {
    /// 注文されたお好み焼きを焼き上げる
    /// - Parameter type: トッピング
    func order(type: Topping) -> Okonomiyaki {

        let okonomiyaki = create(type: type)

        okonomiyaki.prepare()
        okonomiyaki.mix()
        okonomiyaki.bake()

        return okonomiyaki
    }
}
