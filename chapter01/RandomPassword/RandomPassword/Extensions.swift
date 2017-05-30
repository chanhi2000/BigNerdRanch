//
//  Extensions.swift
//  RandomPassword
//
//  Created by LeeChan on 5/29/17.
//  Copyright © 2017 MarkiiimarK. All rights reserved.
//

import Cocoa

extension NSColor {
    static func rgb(r red: CGFloat, g: CGFloat, b: CGFloat) -> NSColor {
        return NSColor(red: red/255, green: g/255, blue: b/255, alpha: 0.2)
    }
}

extension NSView {
    func addConstraintsWithFormat(_ format: String, views: NSView... ) {
        var viewsDictionary = [String: NSView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
