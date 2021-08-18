//
//  SelfIntroduction.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/18.
//

import Foundation

/// 自己紹介プロトコル
protocol SelfIntroduction {
    /// 名前
    func name()
    /// 職業
    func job()
}

extension SelfIntroduction {
    /// 自己紹介
    func introduction() {
        greet()
        name()
        job()
        enthusiasm()
    }

    /// 最初の一言
    func greet() {
        print("こんにちは！")
    }

    /// 意気込み
    func enthusiasm() {
        print("頑張ります！よろしくお願い致します。")
    }
}
