//
//  WelcomeViewController.swift
//  flash-chat
//
//  Created by Nguyen Xuan on 1/27/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleValue = K.appName
        for letter in titleValue {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
}

