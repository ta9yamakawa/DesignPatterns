//
//  OkonomiyakiStore.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/09.
//

protocol OkonomiyakiStore {
    /// お好み焼きを作成
    /// - Parameter type: トッピング
    func create(type: Topping) -> Okonomiyaki
}

extension OkonomiyakiStore {
    /// お好み焼き
    /// - Parameter type: トッピング
    func order(type: Topping) {

        let okonomiyaki = create(type: type)

        okonomiyaki.prepare()
        okonomiyaki.mix()
        okonomiyaki.bake()
    }
}
