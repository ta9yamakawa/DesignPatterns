//
//  HiroshimaOkonomiyakiIngredientFactory.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// 広島風お好み焼き食材Factory
final class HiroshimaOkonomiyakiIngredientFactory: OkonomiyakiIngredientFactory {
    func getSauce() -> Sauce {
        return HiroshimaSauce()
    }

    /*
     他の食材も同様に実装
     */

}

