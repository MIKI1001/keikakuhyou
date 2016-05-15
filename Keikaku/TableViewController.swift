//
//  TableViewController.swift
//  Keikaku
//
//  Created by 篠田弥樹 on 2016/01/17.
//  Copyright © 2016年 篠田弥樹. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var plusButton: UIButton!
    let saveData: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    @IBOutlet var table: UITableView!
    var keyArray = [String]()
    
    override func viewWillAppear(animated: Bool) {
        if saveData.stringArrayForKey("keyArray") != nil {
            keyArray = saveData.stringArrayForKey("keyArray")!
            table.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.plusButton.layer.cornerRadius = 24
        //self.plusButton.layer.masksToBounds = true
        plusButton.layer.shadowColor = UIColor.blackColor().CGColor
        plusButton.layer.shadowOpacity = 0.6
        plusButton.layer.shadowOffset = CGSizeMake(2, 3)
        // Do any additional setup after loading the view.
        //        NSLog(saveData.objectForKey("youzi")as! String!)
        table.dataSource = self
        table.delegate = self
        keyArray = ["youziTextField"]
//        let saveData: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        
//        if(saveData.objectForKey("youzi") != nil){
//            print(saveData.objectForKey("youzi"))
//            youziTextField.text = saveData.objectForKey("youzi") as! String
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return keyArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        
        let planDict = saveData.dictionaryForKey(keyArray[indexPath.row])
        cell.textLabel?.text = planDict!["youzi"] as? String
        return cell
    }
    @IBAction func add() {
        
    }
    
    

    
}
