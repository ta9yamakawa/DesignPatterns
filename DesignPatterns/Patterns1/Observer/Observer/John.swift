//
//  John.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/07/04.
//

/// ジョン
final class John: Observer {

    var name = "John"

    init(with subject: Subject) {
        subject.add(observer: self)
    }

    func update(with title: String, episode: Int) {
        print("John watched: \(title), episode: \(episode)")
    }
}
