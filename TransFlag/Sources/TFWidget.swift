//
//  TFWidget.swift
//  TransFlag
//
//  Created by Ben McLean on 13/12/2022.
//  
//

import Foundation
import AppKit
import PockKit

class TFWidget: PKWidget {
    
    static var identifier: String = "lgbt.mclean.TransFlag"
    var customizationLabel: String = "TransFlag"
    var view: NSView!
    
    required init() {
        self.view = PKButton(title: "TransFlag", target: self, action: #selector(printMessage))
    }
    
    @objc private func printMessage() {
        NSLog("[TFWidget]: Hello, World!")
    }
    
}
