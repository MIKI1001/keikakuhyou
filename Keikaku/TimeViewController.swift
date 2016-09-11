//
//  TimeViewController.swift
//  Keikaku
//
//  Created by 篠田弥樹 on 2016/07/10.
//  Copyright © 2016年 篠田弥樹. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet var date1 : UIDatePicker!
    @IBOutlet var date2 : UIDatePicker!
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 値が変わった際のイベントを登録する.
        date1.addTarget(self, action: "onDidChangeDate:", forControlEvents: .ValueChanged)
        date2.addTarget(self, action: "onDidChangeDate:", forControlEvents: .ValueChanged)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func didMoveToParentViewController(parent: UIViewController?) {
        super.willMoveToParentViewController(parent)
        if parent == nil {
            appDelegate.date1 = self.date1
            appDelegate.date2 = self.date2
        }
    }
    
    internal func onDidChangeDate(sender: UIDatePicker){
        if sender == date1 {
            
        }else{
            
        }
        // フォーマットを生成.
        let myDateFormatter: NSDateFormatter = NSDateFormatter()
        myDateFormatter.dateFormat = "hh:mm"
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
