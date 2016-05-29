//
//  ViewController.swift
//  Keikaku
//
//  Created by 篠田弥樹 on 2015/12/13.
//  Copyright © 2015年 篠田弥樹. All rights reserved.
//

import UIKit

class YoubiViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    
    let youbiData: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    var YoubiArray = [String]()
    var Youbityekku = [false, false, false, false, false, false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.scrollEnabled = false
        table.dataSource = self
        table.delegate = self
        YoubiArray = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
        table.tableFooterView = UIView()
        //if let checker: [Bool] = youbiData.objectForKey("tyekku") as? [Bool] {
        // Youbityekku = checker
       // }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let SViewController = segue.destinationViewController as! senntakuViewController
        SViewController.Youbityekku = Youbityekku
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return YoubiArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        
        cell.textLabel?.text = YoubiArray[indexPath.row]
        
        if Youbityekku[indexPath.row] == true  {
            cell.accessoryType = .Checkmark
            return cell
        }else{
            cell.accessoryType = .None
            return cell
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if Youbityekku[indexPath.row] == true {
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell!.accessoryType = .None
            Youbityekku[indexPath.row] = false
            //youbiData.setObject(Youbityekku, forKey: "tyekku")
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }else{
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell!.accessoryType = .Checkmark
            Youbityekku[indexPath.row] = true
            //youbiData.setObject(Youbityekku, forKey: "tyekku")
            tableView.deselectRowAtIndexPath(indexPath, animated: true)

        }
    }
}