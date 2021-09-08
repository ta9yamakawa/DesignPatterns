//
//  StudentModel.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

/// 学生モデル
protocol StudentModel {
    /// 氏名
    var name: String { get }
    /// 年齢
    var age: Int { get }
    /// 大学名
    var universityName: String { get }
    /// 志望動機
    var motivation: String { get }
}
