//
//  KansaiOkonomiyakiStore2.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// 関西風お好み焼き専門店2号店（Abstract Factory対応）
class KansaiOkonimiyakiStore2: OkonomiyakiStore2 {
    // Abstract Factoryで使用
    /// Factory
    let factory = KansaiOkonomiyakiIngredientFactory()

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

        okonomiyaki.name += "〜関西風〜"

        return okonomiyaki
    }
}

