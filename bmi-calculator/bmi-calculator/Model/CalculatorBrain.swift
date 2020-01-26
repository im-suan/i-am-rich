//
//  CalculatorBrain.swift
//  bmi-calculator
//
//  Created by Nguyen Xuan on 1/26/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        var advice = ""
        var color: UIColor = .white
        
        switch bmiValue {
        case 0..<18.5:
            advice = "Eat more pies"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        case 18.5..<24.9:
            advice = "Fit as a fiddle"
            color = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        default:
            advice = "Eat less pies"
            color = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
