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

internal extension NSNotification.Name {
    static let didChangeWidgetPreferences = NSNotification.Name("didChangeWidgetPreferences")
    static let didChangeWidgetLayout = NSNotification.Name("didChangeWidgetLayout")
}

class TransFlag: PKDetailView {
    
    private var showingAmogus = false
    
    override func didLoad() {
        canScrollTitle = true
        canScrollSubtitle = true
        set(image: Bundle(for: Self.self).image(forResource: "pride"))
        super.didLoad()
    }
    
    override func didTapHandler() {
        if (showingAmogus) {
            set(image: Bundle(for: Self.self).image(forResource: showingAmogus ? "pride" : "amogus"))
        } else {
            set(image: NSImage(byReferencing: URL(string: "https://media.tenor.com/jUMex_rdqPwAAAAS/among-us-twerk.gif")!))
        }
        showingAmogus = !showingAmogus
    }
}

public class TFWidget: PKWidget {
    public static var identifier: String = "TransFlag"
    public var customizationLabel: String = "Trans Flag"
    public var view: NSView!

    required public init() {
        self.view = TransFlag(leftToRight: false)
        NotificationCenter.default.addObserver(self, selector: #selector(update), name: .didChangeWidgetLayout, object: nil)
    }
    
    deinit {
        view = nil
    }
    
    @objc private func update() {
        view.updateConstraints()
        view.layoutSubtreeIfNeeded()
    }
    
    @objc private func printDescription() {
        
    }
        
}
