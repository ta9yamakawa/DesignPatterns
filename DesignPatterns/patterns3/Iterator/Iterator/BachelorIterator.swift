//
//  BachelorIterator.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

/// 学部生用イテレーター
final class BachelorIterator: Iterator {
    /// モデル
    private var models = [BachelorModel]()
    /// インデックス
    private var index = 0

    init(models: [BachelorModel]) {
        self.models = models
    }

    func hasNext() -> Bool {
        return !(index >= models.count)
    }

    func next() -> StudentModel {
        let bachelor = models[index]
        index += 1
        return bachelor
    }
}
