//
//  Bachelor.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/22.
//

/// 学部生
final class Bachelor: Aggregate {
    /// Model
    private var models = [BachelorModel]()

    init() {
        models.append(BachelorModel(name: "山田",
                                    age: 22,
                                    universityName: "〇〇大学",
                                    motivation: "頑張ります！"))

        models.append(BachelorModel(name: "佐藤",
                                    age: 22,
                                    universityName: "××大学",
                                    motivation: "社風に憧れていました。"))

        models.append(BachelorModel(name: "スズキ",
                                    age: 23,
                                    universityName: "▲▲大学",
                                    motivation: "自分のスキルを御社で活かせそうだと思いました。"))
    }

    func createIterator() -> Iterator {
        return BachelorIterator(models: models)
    }
}
