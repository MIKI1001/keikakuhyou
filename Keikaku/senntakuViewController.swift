//
//  senntakuViewController.swift
//  Keikaku
//
//  Created by 篠田弥樹 on 2016/01/31.
//  Copyright © 2016年 篠田弥樹. All rights reserved.
//

import UIKit

class senntakuViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var number4: Int = 0
    var number5: Int = 0
    var number6: Int = 0
    var number7: Int = 0
    @IBOutlet var myUIPicker: UIPickerView!
    @IBOutlet var myUIPicker2: UIPickerView!
    @IBOutlet var myUIPicker3: UIPickerView!
    @IBOutlet var myUIPicker4: UIPickerView!
    @IBOutlet var myUIPicker5: UIPickerView!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var siyou: UISwitch!
    let saveData: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    let myValues: NSArray = ["30分","1時間","1時間30分","2時間","2時間30分","3時間","3時間30分","4時間","4時間30分","5時間","5時間30分","6時間","6時間30分","7時間","7時間30分","8時間","8時間30分","9時間","9時間30分","10時間","10時間30分","11時間","11時間30分","12時間","12時間30分","13時間","13時間30分","14時間","14時間30分","15時間","15時間30分","16時間","16時間30分","17時間","17時間30分","18時間","18時間30分","19時間","19時間30分","20時間","20時間30分","21時間","21時間30分","22時間","22時間30分","23時間","23時間30分","24時間"]
    
    let myValues2: NSArray = ["1時","2時","3時","4時","5時","6時","7時","8時","9時","10時","11時","12時","13時","14時","15時","16時","17時","18時","19時","20時","21時","22時","23時","24時"]
    
    let myValues3: NSArray = ["0分","1分","2分","3分","4分","5分","6分","7分","8分","9分","10分","11分","12分","13分","14分","15分","16分","17分","18分","19分","20分","21分","22分","23分","24分","25分","26分","27分","28分","29分","30分","31分","32分","33分","34分","35分","36分","37分","38分","39分","40分","41分","42分","43分","44分","45分","46分","47分","48分","49分","50分","51分","52分","53分","54分","55分","56分","57分","58分","59分"]
    
    
    @IBOutlet var youziTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        youziTextField.delegate = self
//        myUIPicker.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
        myUIPicker.delegate = self
        myUIPicker.dataSource = self
        self.view.addSubview(myUIPicker)
//        myUIPicker2.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
        myUIPicker2.delegate = self
        myUIPicker2.dataSource = self
        self.view.addSubview(myUIPicker2)
//        myUIPicker3.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
        myUIPicker3.delegate = self
        myUIPicker3.dataSource = self
        self.view.addSubview(myUIPicker3)
//        myUIPicker4.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
        myUIPicker4.delegate = self
        myUIPicker4.dataSource = self
        self.view.addSubview(myUIPicker4)
//        myUIPicker5.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
        myUIPicker5.delegate = self
        myUIPicker5.dataSource = self
        self.view.addSubview(myUIPicker5)
        
        // Do any additional setup after loading the view.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == myUIPicker {
            return myValues.count
        }else if pickerView == myUIPicker2 {
            return myValues2.count
        }else if pickerView == myUIPicker3 {
            return myValues3.count
        }else if pickerView == myUIPicker4 {
            return myValues2.count
        }else if pickerView == myUIPicker5 {
            return myValues3.count
        }else {
            return 0
        }
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return myValues[row] as? String
        if pickerView == myUIPicker {
            return myValues[row] as? String
        }else if pickerView == myUIPicker2 {
            return myValues2[row] as? String
        }else if pickerView == myUIPicker3 {
            return myValues3[row] as? String
        }else if pickerView == myUIPicker4 {
            return myValues2[row] as? String
        }else if pickerView == myUIPicker5 {
            return myValues3[row] as? String
        }else {
            return ""
        }
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        print("row: \(row)")
//        print("value: \(myValues[row])")
        
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
    @IBAction func save() {
        let youbiArray:[Int] = [number1, number2, number3, number4, number5, number6, number7]
        let zikanArray:[String] = [myValues[myUIPicker.selectedRowInComponent(0)] as! String, myValues2[myUIPicker2.selectedRowInComponent(0)] as! String, myValues3[myUIPicker3.selectedRowInComponent(0)] as! String, myValues2[myUIPicker4.selectedRowInComponent(0)] as! String, myValues3[myUIPicker5.selectedRowInComponent(0)] as! String]
        saveData.setObject(youziTextField.text, forKey: "youzi")
        saveData.setObject(youbiArray, forKey: "youbi")
        saveData.setObject(zikanArray, forKey: "zikan")
        saveData.setObject(siyou.on, forKey: "siyou")
        saveData.synchronize()
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
