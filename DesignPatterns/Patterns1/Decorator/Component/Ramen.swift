//
//  Ramen.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/06.
//

/// ラーメン
final class Ramen: Menu {

    override init() {
        super.init()
        
        description = "ラーメン"
    }

    /// ラーメン代
    /// - Returns: 600円
    override func cost() -> Int {
        return 600
    }
}
