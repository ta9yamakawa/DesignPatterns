//
//  SmartSpeaker.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/08/15.
//

/// スマートスピーカー（Facadeの役割）
final class SmartSpeaker {
    /// 全ての家電の電源をつける
    func turnOnAllHomeAppliances() {
        Light.turnOn()
        TV.turnOn()
        Speaker.turnOn()
    }

    /// 全ての家電の電源を切る
    func turnOffAllHomeAppliances() {
        Light.turnOff()
        TV.turnOff()
        Speaker.turnOff()
    }
}
