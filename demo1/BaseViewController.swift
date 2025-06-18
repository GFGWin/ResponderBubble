//
//  BaseViewController.swift
//  demo1
//
//  Created by ios on 2025/6/16.
//

import UIKit

class BaseViewController: UIViewController,ResponderProtocol {
    func handleEvent(type: any CaseIterable) {
        if let type = type as? ContentEvent {
                switch type {
                case .touch(data: let data):
                    print("touch:\(data)")
                case .touchBg(data: let data):
                    print("touchBg:\(data)")
                }
            }
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
