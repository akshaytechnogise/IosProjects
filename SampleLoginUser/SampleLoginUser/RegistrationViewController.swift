//
//  RegistrationViewController.swift
///  SampleLoginUser
//
//  Created by akshay labhshetwar on 01/08/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//

//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var fieldEmail: UITextField!
    @IBOutlet weak var fieldName: UITextField!
    @IBOutlet weak var fieldPassword: UITextField!
    @IBOutlet weak var fieldMobile: UITextField!
    
    @IBAction func registerMe(_ sender: UIButton) {
        //Save registration info in userDefaults      
        
        let name=fieldName.text;
        let email=fieldEmail.text;
        let password=fieldPassword.text;
        let mobile=fieldMobile.text;
        
        let def=UserDefaults.standard
        
        
        
        def.set(name, forKey: "username");
        def.set(password, forKey: "password");
        def.set(email, forKey: "useremail");
        def.set(mobile, forKey: "mobile")
        
        def.synchronize();
        
        //close curent controller
        //now we are using navigation 
        //so we which is the top of the navigation stack
        self.navigationController!.popViewController(animated: true)


        
        
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
