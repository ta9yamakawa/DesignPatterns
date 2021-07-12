//
//  HiroshimaOkonomiyakiStore2.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// 広島風お好み焼き専門店2号店（Abstract Factory対応）
class HiroshimaOkonomiyakiStore2: OkonomiyakiStore2 {
    /// Factory
    private let factory = HiroshimaOkonomiyakiIngredientFactory()

    func create(type: Topping) -> Okonomiyaki2 {
        var okonomiyaki: Okonomiyaki2
        switch type {
        case .mix:
            okonomiyaki = MixedOkonomiyaki(factory: factory)
        case .cheese:
            okonomiyaki = CheeseOkonomiyaki(factory: factory)
        case .mentaiko:
            okonomiyaki = MentaikoOkonomiyaki(factory: factory)
        }

        okonomiyaki.name += "〜広島風〜"

        return okonomiyaki
    }
}

