//
//  MixedOkonomiyaki.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// ミックスお好み焼き
final class MixedOkonomiyaki: Okonomiyaki2 {
    var name: String = "ミックスお好み焼き"

    var sauce: Sauce?

    private var factory: OkonomiyakiIngredientFactory

    init(factory: OkonomiyakiIngredientFactory) {
        self.factory = factory
    }

    func getFoodstuff() {
        sauce = factory.getSauce()
    }
}
