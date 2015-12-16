//
//  Settings.swift
//  tips
//
//  Created by Betty Jing on 12/11/15.
//  Copyright © 2015 bettydabomb. All rights reserved.
//
//makes global so that it is accesssible

import Foundation
class Settings{
    
    var tipAmount = 0.0
    
    init(){
        
    }
    
    init(tipAmount: Double){
        self.tipAmount = tipAmount
        
    }
}
var glbltip = Settings(tipAmount: 0.0)