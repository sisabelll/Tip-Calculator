//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Isabel Lee on 8/27/20.
//  Copyright © 2020 Isabel Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get initial bill and calculate tips
        let bill = Double(billAmountField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

