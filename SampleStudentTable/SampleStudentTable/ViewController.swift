//
//  ViewController.swift
//  SampleStudentTable
//
//  Created by akshay labhshetwar on 02/08/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var studentName=Array<String>();
    var subjects = Array<String>();
    
    
    @IBOutlet weak var fieldName: UITextField!
    @IBOutlet weak var tableVewNameSubject: UITableView!
    
    @IBAction func buttonAdd(_ sender: UIButton) {
        let name = fieldName!.text!;
        studentName.append(name)
        //refresh Data
        tableVewNameSubject.reloadData()
        fieldName!.text="";
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        studentName.append("Nikhil");
        studentName.append("Akshay");
        studentName.append("Prafull");
        studentName.append("Shubham");
        studentName.append("Manoj");
        
        subjects.append("C++");
        subjects.append("Java");
        subjects.append("Android");
        subjects.append("iOS");
        
        //Attach data source and delegate objects to tableView
        tableVewNameSubject.delegate=self;
        tableVewNameSubject.dataSource=self;
        
    }
    //1. decide no of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    //2. decide no. of rows in each section
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0{
            return studentName.count;
        }else if section==1{
            return subjects.count;
        }else
        {
            return 0;
        }
    }
    
    //3. to decide cell content
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell();
        if(indexPath.section)==0
        {
            cell.textLabel!.text=studentName[indexPath.row]
        }
        else if(indexPath.section==1)
        {
            cell.textLabel!.text=subjects[indexPath.row]
        }
        return cell;
    }
    
    //4. Show header for section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0{
            return "Student";
        }else if section == 1{
            return "Subjects"
        }else{
            return ""
        }
        
    }
    //5. Show footer For Section
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section==0{
            return " total - \(studentName.count)";
        }else if section == 1{
            return " total - \(subjects.count)";
        }else{
            return ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

