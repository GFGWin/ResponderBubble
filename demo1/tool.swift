//
//  tool.swift
//  demo1
//
//  Created by ios on 2025/6/16.
//

import UIKit

protocol ResponderEventType {
    func eventType() -> String
}


protocol ResponderProtocol: UIResponder {
    func handleEvent<T>(type: ResponderEventType,params:T)
}




extension UIResponder{
    func bubbleEvent<T>(_ eventType: ResponderEventType,params:T) {
        var nextRespnder = self.next
        while nextRespnder != nil {
            if let savior = nextRespnder as? ResponderProtocol {
                savior.handleEvent(type: eventType,params:params)
                nextRespnder = nil
            }
            nextRespnder = nextRespnder?.next
        }
     }
}
