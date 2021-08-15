//
//  Speaker.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/15.
//

import Foundation

/// スピーカー
final class Speaker: HomeAppliances {
    static func turnOn() {
        print("音楽をかけました")
    }

    static func turnOff() {
        print("音楽を消しました")
    }
}
