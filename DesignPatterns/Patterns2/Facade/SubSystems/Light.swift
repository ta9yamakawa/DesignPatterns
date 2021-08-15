//
//  Light.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/15.
//

import Foundation

/// 部屋の照明
final class Light: HomeAppliance {
    static func turnOn() {
        print("照明をつけました")
    }

    static func turnOff() {
        print("照明を消しました")
    }
}
