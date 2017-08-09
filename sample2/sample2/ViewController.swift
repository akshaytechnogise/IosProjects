//
//  ViewController.swift
//  sample2
//
//  Created by akshay labhshetwar on 27/07/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var fieldName : UITextField?
    @IBOutlet var fieldAge : UITextField?
    @IBOutlet var buttonGo : UIButton?
    
    
    
    @IBAction func goToVoter(source : UIButton) {
        let name = fieldName!.text!
        let age = Int(fieldAge!.text!)!
        
        //get obj of vote controler class
        var voterController = self.storyboard!.instantiateViewController(withIdentifier: "votercon") as! VoterViewController
        
        voterController.name = name;
        voterController.age = age;
        
        
        //launch the second control
        
        self.present(voterController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

