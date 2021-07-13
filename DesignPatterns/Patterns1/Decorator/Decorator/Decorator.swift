//
//  Decorator.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/06.
//

/// Decorator
class Decorator: Menu {
    /// メニュー
    var menu: Menu

    init(_ menu: Menu) {
        self.menu = menu
    }
}
