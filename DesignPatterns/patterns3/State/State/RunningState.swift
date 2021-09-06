//
//  RunningState.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/03.
//

import Foundation

/// 走行状態
final class RunningState: State {
    func run() {
        print("ブーン")
    }

    func stop() {
        print("キキーっ！！")
    }
}
