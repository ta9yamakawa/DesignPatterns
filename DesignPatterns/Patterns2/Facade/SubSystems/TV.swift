//
//  TV.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/15.
//

import Foundation

/// TV
final class TV: HomeAppliances {
    static func turnOn() {
        print("TVをつけました")
    }

    static func turnOff() {
        print("TVを消しました")
    }
}
