//
//  KansaiOkonimiyakiStore.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/09.
//

/// 関西風お好み焼き専門店
class KansaiOkonimiyakiStore: OkonomiyakiStore {

    // Abstract Factoryで使用
    /// Factory
    let factory = KansaiOkonomiyakiIngredientFactory()

    func create(type: Topping) -> Okonomiyaki {
        switch type {
        case .mix:
            return KansaiMixedOkonomiyaki()
        case .cheese:
            return KansaiCheeseOkonomiyaki()
        case .mentaiko:
            return KansaiMentaikoOkonomiyaki()
        }
    }
}
