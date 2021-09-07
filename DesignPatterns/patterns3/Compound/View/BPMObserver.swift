//
//  BPMObserver.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

/// BPMObserver
protocol BPMObserver: AnyObject {
    var name: String { get }
    func updateBPM()
}
