//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by User on 4/28/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float = 0.0
    
    mutating func calculateBmiWith(weight: Float, height: Float){
        bmi = weight / pow(height, 2)
    }
    
    func getBmiValueAsString() -> String {
        return String(format: "%.1f", bmi)
    }
}
