//
//  MasterIterator.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

/// 修士生用イテレーター
final class MasterIterator: Iterator {
    /// モデル
    private var models = [MasterModel]()
    /// インデックス
    private var index = 0

    init(models: [MasterModel]) {
        self.models = models
    }

    func hasNext() -> Bool {
        return !(index >= models.count)
    }

    func next() -> StudentModel {
        let master = models[index]
        index += 1
        return master
    }
}
