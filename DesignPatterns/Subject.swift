//
//  Subject.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/04.
//

/// 値の発行側
protocol Subject: AnyObject {
    /// オブザーバーの登録
    /// - Parameter observer: Observer
    func add(observer: Observer)

    /// オブザーバーの削除
    /// - Parameter observer: Observer
    func remove(observer: Observer)

    /// 新しい値の発行
    func notify()
}
