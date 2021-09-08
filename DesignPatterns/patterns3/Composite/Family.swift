//
//  Family.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/30.
//

import Foundation

/// 家系（Compositeに該当する）
final class Family: Component {
    /// 全ての家族
    var family = [Component]()
    /// 名字
    private let familyName: String

    init(familyName: String) {
        self.familyName = familyName
    }

    func listUp() {
        print("\(familyName)家\n")

        for person in family {
            person.listUp()
        }
    }
}
