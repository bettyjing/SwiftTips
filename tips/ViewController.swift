//
//  ViewController.swift
//  tips
//
//  Created by Betty Jing on 12/9/15.
//  Copyright © 2015 bettydabomb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var billField: UITextField!
    
    @IBOutlet var tipLabel: UILabel!
    
    @IBOutlet var totalLabel: UILabel!
    
    @IBOutlet var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor(red: 255.0/255.0,green: 232.0/255.0, blue: 253/255.0, alpha: 1.0)
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        billField.becomeFirstResponder()
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.25, glbltip.tipAmount/100]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        tipLabel.text = String(tip) //gets the tip and puts it into the label
        totalLabel.text = String(total)
        tipLabel.text = String(format: "$%.2f", tip) //to 2 decimal places
        totalLabel.text = String(format: "$%.2f", total)
        
        //animations
        self.totalLabel.alpha = 0
        UIView.animateWithDuration(0.8, animations: {
        // This causes first view to fade in and second view to fade out
        self.totalLabel.alpha = 1
        })
    }
    
    override func viewDidAppear(animated: Bool) {
        tipControl.setTitle("\(Int(glbltip.tipAmount))%", forSegmentAtIndex: 3)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true) //gets the keyboard to go away when tapped
    }
    
   
}

