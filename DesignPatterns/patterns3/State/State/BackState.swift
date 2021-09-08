//
//  BackState.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/03.
//

import Foundation

/// バック状態
final class BackState: State {
    func run() {
        print("ﾊﾞｯｸｼﾏｽ")
    }
    
    func stop() {
        print("上手に駐めましたー！")
    }
}
