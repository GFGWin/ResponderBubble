//
//  ViewController.swift
//  demo1
//
//  Created by ios on 2025/6/16.
//

import UIKit

class ViewController: BaseViewController {
    override func handleEvent<T>(type: any ResponderEventType, params: T) {
        super.handleEvent(type: type, params: params)
        debugPrint("消息类型2222---\(type) ===== 消息内容：\(params)")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let view1 = ContentView.init(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        view.addSubview(view1)
    }


}

