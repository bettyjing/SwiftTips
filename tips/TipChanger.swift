//
//  TipChanger.swift
//  tips
//
//  Created by Betty Jing on 12/11/15.
//  Copyright © 2015 bettydabomb. All rights reserved.
//

import UIKit

class TipChanger: UIViewController {

    @IBAction func Changer(sender: AnyObject) {
        glbltip.tipAmount = Double(tipChange.text!)! 
    }
    @IBOutlet var tipChange: UITextField!
    override func viewDidLoad() {
        tipChange.becomeFirstResponder()
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true) //gets the keyboard to go away when tapped
    }

}
