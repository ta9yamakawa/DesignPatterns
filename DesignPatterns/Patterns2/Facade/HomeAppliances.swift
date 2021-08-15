//
//  HomeAppliances.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/15.
//

/// 家電の電源On/Off操作プロトコル
protocol HomeAppliances {
    /// 電源をつける
    static func turnOn()

    /// 電源を切る
    static func turnOff()
}
