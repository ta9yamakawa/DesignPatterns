//
//  BPMObserver.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

import Foundation

/// BPMObserver
protocol BPMObserver {
    var name: String { get }
    func updateBPM()
}
