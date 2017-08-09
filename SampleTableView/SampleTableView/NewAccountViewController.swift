//
//  NewAccountViewController.swift
//  SampleTableView
//
//  Created by akshay labhshetwar on 30/07/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//


import UIKit

class NewAccountViewController: UIViewController {
    
    
    
    @IBOutlet weak var fieldAcno: UITextField!
    
    @IBOutlet weak var fieldName: UITextField!
    
    @IBOutlet weak var fieldBal: UITextField!
    
    var vcon = ViewController();
    
    @IBAction func addAccount(_ sender: UIButton) {
        var acno:Int = Int(fieldAcno.text!)!;
        var name:String = fieldName.text!
        var bal:Float = Float(fieldBal.text!)!;
        
        let item=BankAccount(acno: acno, name: name, balance: bal)
        vcon.accounts.append(item)
        
        self.dismiss(animated: true, completion: nil)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
