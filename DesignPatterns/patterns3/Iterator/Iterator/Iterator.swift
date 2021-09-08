//
//  Iterator.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

/// イテレーター
protocol Iterator {
    /// 次の要素があるか
    func hasNext() -> Bool
    /// 次の要素を取得する
    func next() -> StudentModel?
}
