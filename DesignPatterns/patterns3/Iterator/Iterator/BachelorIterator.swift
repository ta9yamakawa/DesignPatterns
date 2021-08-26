//
//  BachelorIterator.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

/// 学部生用イテレーター
final class BachelorIterator: Iterator {
    /// 学部生
    private var bachelor: Bachelor?
    /// インデックス
    private var index = 0

    init(bachelor: Bachelor) {
        self.bachelor = bachelor
    }

    func hasNext() -> Bool {
        guard let models = bachelor?.models else {
            return false
        }
        return !(index >= models.count)
    }

    func next() -> StudentModel? {
        guard let models = bachelor?.models else {
            return nil
        }

        let bachelor = models[index]
        index += 1
        return bachelor
    }
}
