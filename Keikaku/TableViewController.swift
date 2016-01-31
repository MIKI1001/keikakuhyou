//
//  TableViewController.swift
//  Keikaku
//
//  Created by 篠田弥樹 on 2016/01/17.
//  Copyright © 2016年 篠田弥樹. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet var plusButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.plusButton.layer.cornerRadius = 24
        //self.plusButton.layer.masksToBounds = true
        plusButton.layer.shadowColor = UIColor.blackColor().CGColor
        plusButton.layer.shadowOpacity = 0.6
        plusButton.layer.shadowOffset = CGSizeMake(2, 3)
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
