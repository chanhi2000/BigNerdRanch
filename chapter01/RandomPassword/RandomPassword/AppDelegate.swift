//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by LeeChan on 5/29/17.
//  Copyright © 2017 MarkiiimarK. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var window: NSWindow?
    var controller: NSViewController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        window = NSWindow(contentRect: NSMakeRect(10, 10, 30, 30)
            , styleMask: .resizable,
              backing: .buffered,
              defer: false)
        controller = ViewController()
        
        window?.contentView?.addSubview((controller?.view)!)
        window?.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

