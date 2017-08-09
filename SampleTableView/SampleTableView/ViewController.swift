//
//  ViewController.swift
//  SampleTableView
//
//  Created by akshay labhshetwar on 30/07/17.
//  Copyright © 2017 akshay labhshetwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var accounts=Array<BankAccount>();
    
    @IBOutlet weak var buttonAddAcount: UIButton!
    @IBOutlet weak var tableViewController: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Attach cell design with table view
        var cellNib=UINib(nibName: "BankAccountTableViewCell", bundle: nil);
        tableViewController.register(cellNib, forCellReuseIdentifier: "accountcell");
        
        //Fill array
        let item1=BankAccount(acno: 101, name: "Akshay", balance: 10000)
        accounts.append(item1)
        let item2=BankAccount(acno: 102, name: "Shubham", balance: 12000)
        accounts.append(item2)
        let item3=BankAccount(acno: 103, name: "Jagdish", balance: 100000)
        accounts.append(item3)
        let item4=BankAccount(acno: 104, name: "Tushar", balance: 9000)
        accounts.append(item4)
        
        
        //Attach DataSource to Delegate
        tableViewController.delegate=self;
        tableViewController.dataSource=self;
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableViewController.dequeueReusableCell(withIdentifier: "accountcell", for: indexPath) as! BankAccountTableViewCell
        let item=accounts[indexPath.row];
        var name=item.name;
        
        var acno:String=String(item.acno)
        var data=acno+"-"+name
        cell.labelAcnoName!.text=data
        
        cell.labelBalance!.text=String(item.balance);
        //Attach  current Item and current controller
        cell.bankAccount=item;
        cell.viewCon=self
        
        return cell;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if ( segue.identifier == "seguenew"){
            let accountCon = segue.destination as! NewAccountViewController
            accountCon.vcon=self;
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        tableViewController.reloadData();90
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
