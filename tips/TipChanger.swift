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
        //self.view.backgroundColor = UIColor(red: 255.0/255.0,green: 232.0/255.0, blue: 253/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true) //gets the keyboard to go away when tapped
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
