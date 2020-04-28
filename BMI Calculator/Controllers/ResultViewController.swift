//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by User on 4/28/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String? = nil
    
    @IBOutlet weak var bmiNumber: UILabel!
    @IBOutlet weak var advice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bmi = bmiValue {
            bmiNumber.text = bmi
        }
    }

    @IBAction func recalculate(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
