//
//  ViewController.swift
//  demo1
//
//  Created by ios on 2025/6/16.
//

import UIKit

class ViewController: BaseViewController {
    override func handleEvent(type: any CaseIterable) {
        super.handleEvent(type: type)
        if let type = type as? ContentEvent {
                switch type {
                case .touch(data: let data):
                    print("touch222:\(data)")
                case .touchBg(data: let data):
                    print("touchBg222:\(data)")
                }
            }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let view1 = ContentView.init(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        view.addSubview(view1)
    }


}

