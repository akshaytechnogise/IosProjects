//
//  VoterViewController.swift
//  sample2
//
//  Created by akshay labhshetwar on 27/07/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.

import UIKit

class VoterViewController: UIViewController {
    
    @IBOutlet var labelData : UILabel?
    @IBOutlet var labelResult : UILabel?
    @IBOutlet var buttonIsVoter : UIButton?
     @IBOutlet var buttonBack : UIButton?
    
   var age : Int = 0
   var name : String = ""
    
    @IBAction func isVoter(source:UIButton)
    {
        if (age>=18)
        {
            labelResult!.text = "\(name) can vote"
        }
        else
        {
            labelResult!.text = "\(name) try next year"
        }
    }
    
    @IBAction func goBack(source : UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let str = "\(name) - \(age)"
        labelData!.text = str
        
        
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
