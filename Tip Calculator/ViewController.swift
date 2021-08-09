//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Josue Proano on 8/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    @IBOutlet weak var totalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipSelection(_ sender: Any) {
        
        let bill = Double(billAmount.text!) ?? 0
        let tipPercentage = [0.15,0.18,0.2]
        let tip = bill * tipPercentage[tipPercent.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmount.text = String(format: "$%.02f", tip)
        
        totalAmount.text = String(format: "$%.02f", total)
    }
    
}

