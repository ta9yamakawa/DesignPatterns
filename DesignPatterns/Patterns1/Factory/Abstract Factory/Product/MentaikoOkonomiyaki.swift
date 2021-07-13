//
//  MentaikoOkonomiyaki.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// 明太子お好み焼き
final class MentaikoOkonomiyaki: Okonomiyaki2 {
    var name: String = "明太お好み焼き"

    var sauce: Sauce?

    private var factory: OkonomiyakiIngredientFactory

    init(factory: OkonomiyakiIngredientFactory) {
        self.factory = factory
    }

    func getFoodstuff() {
        sauce = factory.getSauce()
    }
}
