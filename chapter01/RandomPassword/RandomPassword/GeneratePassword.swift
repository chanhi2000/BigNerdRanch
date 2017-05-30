//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by LeeChan on 5/29/17.
//  Copyright © 2017 MarkiiimarK. All rights reserved.
//

import Foundation

private let letters: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

func randomStringWithLength(_ len: Int) -> String {
    var randomString:String = ""
    
    for _ in stride(from: 0, to: len, by: 1) {
        let length = UInt32(letters.characters.count)
        let rand = Int(arc4random_uniform(length))
        let newChar = letters[letters.characters.index(letters.startIndex, offsetBy: rand)]
        randomString += String(newChar)
    }
    return randomString
}
