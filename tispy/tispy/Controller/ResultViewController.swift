//
//  ResultViewController.swift
//  tispy
//
//  Created by Nguyen Xuan on 1/26/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var total: Float?
    var splitNumber: Double?
    var tipValue: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.2f", total!)
        settingsLabel.text = String(format: "Split between %.0f people, with %.0f%% tip", splitNumber!, tipValue!*100)
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
