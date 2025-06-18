//
//  ContentView.swift
//  demo1
//
//  Created by ios on 2025/6/16.
//

import UIKit

enum ContentEvent:CaseIterable{

    
    case touch(data:String)
    case touchBg(data:String)
    
    static var allCases: [ContentEvent] { return [.touch(data: "0"),.touchBg(data: "1")]}

}

//enum ContentEvent:String,ResponderEventType{
//    case touch
//    case bgTouch
//    func eventType() -> String {
//        return self.rawValue
//    }
//    
//    
//}

class ContentView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .cyan
        let btn = UIButton(type: .custom)
        btn.backgroundColor = .lightGray
        addSubview(btn)
        btn.addTarget(self, action: #selector(touchAction), for: .touchUpInside)
        btn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(touchBg))
        self.addGestureRecognizer(tap)
    }
    
    
    @objc func touchAction(){
        self.bubbleEvent(ContentEvent.touch(data: "666"))
    }
    @objc func touchBg(){
        self.bubbleEvent(ContentEvent.touchBg(data: "888"))
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
