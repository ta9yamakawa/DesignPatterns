//
//  DJView.swift
//  DesignPatterns
//
//  Created by ta9yamakawa on 2021/09/07.
//

import UIKit

final class DJView: UIView, BeatObserver, BPMObserver {
    var name: String = "DJ"

    private let model = BeatModel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }

    func updateBeat() {
        print("aaaaaa")
    }

    func updateBPM() {
        let bpm = model.getBPM()
        if bpm == 0 {
            print("oooooooooo")
        } else {
            print("0じゃないよ")
        }
    }
    
}

private extension DJView {
    /// Viewの構築
    func loadNib() {
        guard let view = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)),
                                                                  owner: self,
                                                                  options: nil)?.first as? UIView else {
            return
        }
        view.frame = self.bounds
        self.addSubview(view)

        model.registerObserver(self as BeatObserver)
        model.registerObserver(self as BPMObserver)
    }
}
