//
//  OkonomiyakiIngredientFactory.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/12.
//

/// 食材取得用Factory
protocol OkonomiyakiIngredientFactory: AnyObject {
    /// お好みソースを取得
    func getSauce() -> Sauce
}
