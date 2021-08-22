//
//  Master.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

final class Master: Aggregate {
    /// Model
    private var models = [MasterModel]()

    init() {
        models.append(MasterModel(name: "田中",
                                  age: 25,
                                  universityName: "〇〇大学大学院",
                                  motivation: "研究で培った経験を発揮します"))

        models.append(MasterModel(name: "木村",
                                  age: 27,
                                  universityName: "××大学大学院",
                                  motivation: "社風に憧れていました。"))

        models.append(MasterModel(name: "藤原",
                                  age: 26,
                                  universityName: "▲▲大学大学院",
                                  motivation: "自分のスキルを御社で活かせそうだと思いました。"))
    }

    func createIterator() -> Iterator {
        return MasterIterator(models: models)
    }
}
