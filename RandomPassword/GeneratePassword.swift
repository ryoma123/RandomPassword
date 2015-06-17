//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by usr0600328 on 2015/05/19.
//  Copyright (c) 2015年 ryoma. All rights reserved.
//

import Foundation

private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

func generateRandomString(length: Int) -> String {
    // Start with an empty string
    var string = ""
    
    // Append 'length' number of random characters
    for index in 0..<length {
        string.append(generateRandomCharacter())
    }
    
    return string
}

func generateRandomCharacter() -> Character {
    // Create a random index into the characters array
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    
    // Get and return a random character
    let character = characters[index]
    return character
}