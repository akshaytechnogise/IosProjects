//
//  BankAccount.swift
//  SampleTableView
//
//  Created by akshay labhshetwar on 30/07/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//


import Foundation
class BankAccount{
    
    var acno:Int=0;
    var name:String="";
    var balance:Float=0.0;
    
    init() {
        
    }
    init(acno:Int ,name:String,balance:Float) {
        self.acno=acno;
        self.name=name;
        self.balance=balance;
    }
    
}
