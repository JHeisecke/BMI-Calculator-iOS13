//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by User on 4/28/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI? = nil
    
    mutating func calculateBmiWith(weight: Float, height: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        } else if bmiValue >= 18.5, bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Nice", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: #colorLiteral(red: 0.807817851, green: 0.2046500428, blue: 0.09102097603, alpha: 1))
        }
        
    }
    
    func getBmiValueAsString() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getBmiColor() -> UIColor {
        return bmi?.color ?? .blue
    }
    
    func getBmiAdvice() -> String {
        return bmi?.advice ?? "Be healthy!"
    }
}
