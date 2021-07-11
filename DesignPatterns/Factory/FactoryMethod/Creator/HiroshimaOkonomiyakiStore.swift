//
//  HiroshimaOkonomiyakiStore.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/09.
//

/// 広島風お好み焼き専門店
class HiroshimaOkonomiyakiStore: OkonomiyakiStore {

    // Abstract Factoryで使用
    /// Factory
    let factory = HiroshimaOkonomiyakiIngredientFactory()

    func create(type: Topping) -> Okonomiyaki {
        switch type {
        case .mix:
            return HiroshimaMixedOkonomiyaki()
        case .cheese:
            return HiroshimaCheeseOkonomiyaki()
        case .mentaiko:
            return HiroshimaMentaikoOkonomiyaki()
        }
    }
}
