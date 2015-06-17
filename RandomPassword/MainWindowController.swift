//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by usr0600328 on 2015/05/13.
//  Copyright (c) 2015年 ryoma. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textField: NSTextField!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    @IBAction func generatePassword(sender: AnyObject) {
        // Get a random string of length 8
        let length = 8
        let password = generateRandomString(length)
        
        // Tell the text field what to display
        textField.stringValue = password
    }
}
