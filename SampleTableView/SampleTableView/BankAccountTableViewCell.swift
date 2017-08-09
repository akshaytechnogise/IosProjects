//
//  BankAccountTableViewCell.swift
//  SampleTableView
//
//  Created by akshay labhshetwar on 30/07/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//

import UIKit

class BankAccountTableViewCell: UITableViewCell {

    @IBOutlet weak var labelAcnoName: UILabel!
    @IBOutlet weak var labelBalance: UILabel!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var fieldAmount: UITextField!
    
    var bankAccount:BankAccount?;
    var viewCon:ViewController?;
    
    
    @IBAction func addBalane(_ sender: UIButton) {
        
        let amt:Float=Float(fieldAmount!.text!)!;
        bankAccount!.balance+=amt
        
        labelBalance!.text=String( bankAccount!.balance)
    }
    
    @IBAction func minusBalance(_ sender: UIButton) {
        let amt:Float=Float(fieldAmount!.text!)!;
        bankAccount!.balance-=amt
        
        labelBalance!.text=String( bankAccount!.balance)

    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
