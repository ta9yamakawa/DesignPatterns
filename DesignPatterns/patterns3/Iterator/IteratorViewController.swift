//
//  IteratorViewController.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

import UIKit

/// IteratorViewController
final class IteratorViewController: UIViewController {
    /// 学部生
    private let bachelor = Bachelor()
    /// 修士生
    private let master = Master()
}

private extension IteratorViewController {

    @IBAction func didTapListUpButton(_ sender: Any) {
        listUpStudents()
    }

    /// 学部生と修士学生をリストアップ
    func listUpStudents() {
        let bachlorIterator = bachelor.createIterator()
        let masterIterator = master.createIterator()
        listUpStudents(from: bachlorIterator)
        listUpStudents(from: masterIterator)
    }

    /// 学生をリストアップ
    /// - Parameter iterator: Iterator
    func listUpStudents(from iterator: Iterator) {
        while iterator.hasNext() {
            let model = iterator.next()
            print(model.name + " " + String(model.age) + "です。\n")
            print(model.universityName + "出身です。\n")
            print(model.motivation)
            print("==============")
        }
    }
}
