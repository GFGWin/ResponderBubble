//
//  tool.swift
//  demo1
//
//  Created by ios on 2025/6/16.
//

import UIKit


protocol ResponderProtocol: UIResponder {
    func handleEvent(type: any CaseIterable)
}




extension UIResponder{
    func bubbleEvent(_ eventType: any CaseIterable) {
        var nextRespnder = self.next
        while nextRespnder != nil {
            if let savior = nextRespnder as? ResponderProtocol {
                savior.handleEvent(type: eventType)
                nextRespnder = nil
            }
            nextRespnder = nextRespnder?.next
        }
     }
}
