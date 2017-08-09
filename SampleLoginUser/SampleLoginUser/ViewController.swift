//
//  ViewController.swift
//  SampleLoginUser
//
//  Created by akshay labhshetwar on 01/08/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var fieldEmail: UITextField!
    
    @IBOutlet weak var fieldPass: UITextField!
    
    var isValidUser=false;
    
    @IBAction func login(_ sender: UIButton) {
        
        let def=UserDefaults.standard;
        let storedEmail=def.value(forKey: "useremail") as! String
        let storedPassword=def.value(forKey: "password") as! String
        
        let email=fieldEmail!.text!;
        let pass=fieldPass!.text!;
        
        if (email==storedEmail  && pass==storedPassword){
            isValidUser=true;
            //save login state
            def.set(true,forKey: "login")
            def.synchronize();
        }else
        {
            isValidUser=false;
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let def=UserDefaults.standard;
        var loginStatus = def.value(forKey: "login")
        if loginStatus != nil && loginStatus as! Bool == true
        {
            //go to home and close current controller
            //go to home using segue it is connected with
            performSegue(withIdentifier: "seguehome", sender: self)
            
            //close current controller from nevigation
            //   self.navigationController!.popViewController(animated: true)
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (identifier=="seguehome" && isValidUser==false ){
            return false
        }
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
