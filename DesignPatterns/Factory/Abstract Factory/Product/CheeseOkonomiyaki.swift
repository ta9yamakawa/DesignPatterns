//
//  CheeseOkonomiyaki.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

class CheeseOkonomiyaki: Okonomiyaki2 {
    var name: String = "チーズお好み焼き"

    var sauce: Sauce?

    var factory: OkonomiyakiIngredientFactory

    init(factory: OkonomiyakiIngredientFactory) {
        self.factory = factory
    }

    func getFoodstuff() {
        sauce = factory.getSauce()
    }
}
