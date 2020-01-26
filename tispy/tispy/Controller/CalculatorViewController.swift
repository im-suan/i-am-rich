//
//  CalculatorViewController.swift
//  tispy
//
//  Created by Nguyen Xuan on 1/26/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipValue:Float = 0.0
    var splitNumber:Double = 2.0
    var totalBill:Float = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        switch sender.currentTitle {
        case "0%":
            tipValue = 0.0
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        case "10%":
            tipValue = 0.1
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
        default:
            tipValue = 0.2
            twentyPctButton.isSelected = true
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = false
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        splitNumber = sender.value
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billValue: Float = Float(billTextField.text ?? "0.0") ?? 0.0
        totalBill = billValue*(1.0+tipValue)/Float(splitNumber)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.total = totalBill
            destinationVC.tipValue = tipValue
            destinationVC.splitNumber = splitNumber
        }
    }
}

