//
//  KansaiOkonomiyakiIngredientFactory.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// 関西風お好み焼き食材Factory
final class KansaiOkonomiyakiIngredientFactory: OkonomiyakiIngredientFactory {
    func getSauce() -> Sauce {
        return KansaiSauce()
    }

    /*
     他の食材も同様に実装
     */

}
