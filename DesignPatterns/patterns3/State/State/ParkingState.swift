//
//  ParkingState.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/03.
//

import Foundation

/// 停止状態
final class ParkingState: State {
    func run() {
        print("動きません")
    }

    func stop() {
        print("既に停止しています")
    }
}
