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
    var data = [String]()
    
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
        data = ["youziTextField"]
    }
    
    override func viewDidAppear(animated: Bool) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    @IBAction func add() {
        
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
