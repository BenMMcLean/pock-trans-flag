//
//  TFImage.swift
//  TransFlag
//
//  Created by Ben McLean on 13/12/2022.
//

import Foundation
import PockKit

class TFImage: PKView {
    
    public private(set) lazy var imageView: NSImageView! = {
        let imageView = NSImageView(frame: .zero)
        imageView.imageScaling = .scaleProportionallyDown
        return imageView
    }()
    
    open func set(image: NSImage?) {
        imageView?.image = image
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.frame = NSRect(x: 0, y: 0, width: 0, height: 30)
        self.load()
    }
    
    public override init(frame frameRect: NSRect = NSRect(x: 0, y: 0, width: 0, height: 30)) {
        super.init(frame: NSRect(x: frameRect.origin.x, y: frameRect.origin.y, width: frameRect.size.width, height: 30))
    }

    
    private func load() {
        addSubview(imageView)
    }
    
}
