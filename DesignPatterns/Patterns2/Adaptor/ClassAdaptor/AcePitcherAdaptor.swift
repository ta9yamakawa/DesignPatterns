//
//  AcePitcherAdaptor.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/09.
//

/// エースピッチャーのアダプター
final class AcePitcherAdaptor: AcePitcher, BaseballPlayer {
    func throwing() {
        super.fastBall()
    }

    func hitting() {
        print("打撃")
    }
}
