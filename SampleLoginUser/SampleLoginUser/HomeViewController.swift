//
//  HomeViewController.swift
//  SampleLoginUser
//
//  Created by akshay labhshetwar on 01/08/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//
//
import Foundation
import UIKit
import MessageUI

class HomeViewController: UIViewController, MFMailComposeViewControllerDelegate{

  
    @IBOutlet weak var labelHome: UILabel!
    @IBOutlet weak var labelMobile: UILabel!
    
    @IBAction func emailToUser(_ sender: UIButton) {
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }
        sendEmail()

}
    func sendEmail() {
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self
        // Configure the fields of the interface.
        var def=UserDefaults.standard;
        var email=def.value(forKey: "useremail") as! String
        composeVC.setToRecipients([email])
        composeVC.setSubject("Hello!")
        composeVC.setMessageBody("Hello this is my message body!", isHTML: false)
        // Present the view controller modally.
        self.present(composeVC, animated: true, completion: nil)
    }
    
    func mailComposeController(controller: MFMailComposeViewController,
                               didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        // Check the result or perform other tasks.
        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func logout(_ sender: UIBarButtonItem) {
        var def=UserDefaults.standard;
        def.setValue(false, forKey: "login");
        def.synchronize();
        self.navigationController!.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var def=UserDefaults.standard;
        var name=def.value(forKey: "username") as! String
        var mobile=def.value(forKey: "mobile") as! String
       
        labelHome!.text="Welcome..\(name)"
        labelMobile!.text="Mobile no \(mobile)"
        

        // Do any additional setup after loading the view.
    }

/*    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
