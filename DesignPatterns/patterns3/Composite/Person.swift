//
//  Person.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/30.
//

import Foundation

/// 個人（leafに該当する）
final class Person: Component {
    /// 氏名
    var name: String

    init(name: String) {
        self.name = name
    }

    func listUp() {
        print(name)
    }
}
