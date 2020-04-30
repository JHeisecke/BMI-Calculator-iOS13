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
    var color : UIColor = .blue
    var adviceText : String? = nil
    @IBOutlet weak var bmiNumber: UILabel!
    @IBOutlet weak var advice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bmi = bmiValue, let text = adviceText {
            bmiNumber.text = bmi
            advice.text = text
            view.backgroundColor = color
        }
    }

    @IBAction func recalculate(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
