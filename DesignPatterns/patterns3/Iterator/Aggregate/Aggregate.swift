//
//  Aggregate.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

/// アグリゲート
protocol Aggregate {
    /// イテレーターを作成
    func createIterator() -> Iterator
}
