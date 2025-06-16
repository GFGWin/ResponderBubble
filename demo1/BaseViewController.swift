//
//  BaseViewController.swift
//  demo1
//
//  Created by ios on 2025/6/16.
//

import UIKit

class BaseViewController: UIViewController,ResponderProtocol {
    func handleEvent<T>(type: any ResponderEventType, params: T) {
        debugPrint("消息类型---\(type) ===== 消息内容：\(params)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
