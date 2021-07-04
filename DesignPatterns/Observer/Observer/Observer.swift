//
//  Observer.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/04.
//

/// 値の監視側
protocol Observer: AnyObject {
    /// 名前
    var name: String {get}
    /// 値の更新
    /// - Parameter title: タイトル
    /// - Parameter episode: エピソード（話数）
    func update(with title: String, episode: Int)
}
