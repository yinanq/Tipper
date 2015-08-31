//
//  ViewController.swift
//  Tipper
//
//  Created by Yinan Qiu on 8/30/15.
//  Copyright (c) 2015 Yinan Qiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text="0.00"
        totalLabel.text="0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
//        println("hahahah")
        
        var tipChoices = [0.15, 0.2, 0.25]
        var tipChoice = tipChoices[tipControl.selectedSegmentIndex]
        
        var bill = NSString(string: billField.text).doubleValue
        var tip = bill * tipChoice
        var total = bill + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
//        billField.text = "$\(bill)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
//        billField.text = String(format: "$%.2f", bill)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(false)
    }
}

