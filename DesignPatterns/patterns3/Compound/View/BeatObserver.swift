//
//  BeatObserver.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

/// BeatObserver
protocol BeatObserver: AnyObject {
    var name: String { get }
    func updateBeat()
}
