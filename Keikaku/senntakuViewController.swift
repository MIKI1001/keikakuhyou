//
//  senntakuViewController.swift
//  Keikaku
//
//  Created by 篠田弥樹 on 2016/01/31.
//  Copyright © 2016年 篠田弥樹. All rights reserved.
//

import UIKit

class senntakuViewController: UIViewController, UITextFieldDelegate {
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var number4: Int = 0
    var number5: Int = 0
    var number6: Int = 0
    var number7: Int = 0
    
    @IBOutlet var yougiTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        yougiTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func b1(sender: AnyObject) {
        let button = (sender as! UIButton)
        if number1 <= 0 {
            button.setImage(UIImage(named: "tyekkuari.png"), forState: UIControlState.Normal)
            number1 = number1 + 1
        } else {
            button.setImage(UIImage(named: "tyekkunasi.png"), forState: UIControlState.Normal)
            number1 = number1 - 1
        }
    }
    @IBAction func b2(sender: AnyObject) {
        let button = (sender as! UIButton)
        if number2 <= 0 {
            button.setImage(UIImage(named: "tyekkuari.png"), forState: UIControlState.Normal)
            number2 = number2 + 1
        } else {
            button.setImage(UIImage(named: "tyekkunasi.png"), forState: UIControlState.Normal)
            number2 = number2 - 1
        }
    }
    @IBAction func b3(sender: AnyObject) {
        let button = (sender as! UIButton)
        if number3 <= 0 {
            button.setImage(UIImage(named: "tyekkuari.png"), forState: UIControlState.Normal)
            number3 = number3 + 1
        } else {
            button.setImage(UIImage(named: "tyekkunasi.png"), forState: UIControlState.Normal)
            number3 = number3 - 1
        }
    }
    @IBAction func b4(sender: AnyObject) {
        let button = (sender as! UIButton)
        if number4 <= 0 {
            button.setImage(UIImage(named: "tyekkuari.png"), forState: UIControlState.Normal)
            number4 = number4 + 1
        } else {
            button.setImage(UIImage(named: "tyekkunasi.png"), forState: UIControlState.Normal)
            number4 = number4 - 1
        }
    }
    @IBAction func b5(sender: AnyObject) {
        let button = (sender as! UIButton)
        if number5 <= 0 {
            button.setImage(UIImage(named: "tyekkuari.png"), forState: UIControlState.Normal)
            number5 = number5 + 1
        } else {
            button.setImage(UIImage(named: "tyekkunasi.png"), forState: UIControlState.Normal)
            number5 = number5 - 1
        }
    }
    @IBAction func b6(sender: AnyObject) {
        let button = (sender as! UIButton)
        if number6 <= 0 {
            button.setImage(UIImage(named: "tyekkuari.png"), forState: UIControlState.Normal)
            number6 = number6 + 1
        } else {
            button.setImage(UIImage(named: "tyekkunasi.png"), forState: UIControlState.Normal)
            number6 = number6 - 1
        }
    }
    @IBAction func b7(sender: AnyObject) {
        let button = (sender as! UIButton)
        if number7 <= 0 {
            button.setImage(UIImage(named: "tyekkuari.png"), forState: UIControlState.Normal)
            number7 = number7 + 1
        } else {
            button.setImage(UIImage(named: "tyekkunasi.png"), forState: UIControlState.Normal)
            number7 = number7 - 1
        }
    }
    @IBAction func  save() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
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
