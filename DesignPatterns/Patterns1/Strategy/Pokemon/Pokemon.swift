//
//  Pokemon.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/06/25.
//

/// ポケモンクラス
class Pokemon {
    /// 飛行タイプ
    private var flyType: FlyType?

    /// 飛行タイプを設定
    /// - Parameter type: FlyType
    func setFlyType(with type: FlyType = .normal) {
        flyType = type
    }

    /// 飛行アクション
    func fly() {
        guard let type = flyType else {
            fatalError("飛行タイプが設定されていません")
        }

        switch type {
        case .normal:
            return FlyNormal.fly()
        case .noFly:
            return FlyNoWay.fly()
        case .ballon:
            return FlyBalloon.fly()
        }
    }
}
