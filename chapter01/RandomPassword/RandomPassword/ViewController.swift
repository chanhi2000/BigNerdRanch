//
//  ViewController.swift
//  RandomPassword
//
//  Created by LeeChan on 5/29/17.
//  Copyright © 2017 MarkiiimarK. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let passwordTextField: NSTextField = {
        let txtf = NSTextField(frame: .zero)
        txtf.placeholderString = "non-typeable"
        txtf.font = NSFont.systemFont(ofSize: 26)
        txtf.isEditable = false
        txtf.isSelectable = true
        txtf.translatesAutoresizingMaskIntoConstraints = false
        return txtf
    }()
    
    lazy var passwordButton: NSButton = {
        let btn = NSButton(title: "Generate Password",
                           target: self,
                           action: #selector(generatePassword))
        btn.alignment = .center
        btn.font = NSFont.systemFont(ofSize: 20)
        btn.layer?.cornerRadius = 3
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func loadView() {
        let v = NSView(frame: NSMakeRect(0, 0, 600, 300))
        v.wantsLayer = true
        v.layer?.borderWidth = 2
        v.layer?.borderColor = NSColor.red.cgColor
        view = v
    }
    
    var password: String {
        set {
            passwordTextField.stringValue = newValue
        }
        get {
            return passwordTextField.stringValue
        }
    }
    
    func generatePassword() {
        let length = 8
        passwordTextField.stringValue = randomStringWithLength(length)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Password Generator"
        view.layer?.backgroundColor = NSColor.black.cgColor
        
        setupViews()
    }
    
    fileprivate func setupViews() {
        view.addSubview(passwordTextField)
        view.addSubview(passwordButton)
        
        passwordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 44).isActive = true
        
        passwordTextField.bottomAnchor.constraint(equalTo: passwordButton.topAnchor, constant: -22).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: passwordButton.centerXAnchor).isActive = true
    }
    

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

