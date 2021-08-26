//
//  MasterIterator.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

/// 修士生用イテレーター
final class MasterIterator: Iterator {
    /// 修士生
    private var master: Master?
    /// インデックス
    private var index = 0

    init(master: Master) {
        self.master = master
    }

    func hasNext() -> Bool {
        guard let models = master?.models else {
            return false
        }
        return !(index >= models.count)
    }

    func next() -> StudentModel? {
        guard let models = master?.models else {
            return nil
        }
        let model = models[index]
        index += 1
        return model
    }
}
