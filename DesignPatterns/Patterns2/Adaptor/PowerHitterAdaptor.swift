//
//  PowerHitter.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/04.
//

import Foundation

/// 強打者のアダプター
final class PowerHitterAdaptor: BaseballPlayer {
    let player: PowerHitter

    init(player: PowerHitter) {
        self.player = player
    }

    func throwing() {
        print("送球")
    }

    func hitting() {
        player.homerun()
    }
}
