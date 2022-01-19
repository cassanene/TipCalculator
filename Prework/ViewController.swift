//
//  ViewController.swift
//  Prework
//
//  Created by Cassey Anene on 1/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from the text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // calculate tipe
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex] // selectedSegmentIndex identifies the index that   the use touched
        let total = bill + tip
        
        // update tip amount label and total amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
}

