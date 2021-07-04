//
//  Paul.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/04.
//

/// ジョン
final class Paul: Observer {

    var name = "Paul"

    func update(with title: String, episode: Int) {
        print("Paul watched: \(title), episode: \(episode)")
    }
}
