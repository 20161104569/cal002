//
//  ViewController.swift
//  cal002
//
//  Created by 20161104569 on 2018/9/28.
//  Copyright © 2018年 20161104569. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBAction func gxt_p(_ sender: Any) {
        test.text = test.text! + "."    }
    
    
    @IBAction func gxt_chu(_ sender: Any) {
        if gxt_chu == 1{
            let x = Double(gxt_dy)!
            let y = Double(test.text!)!
            let z = x / y
            dy = String(z)
            test.text = ""
            number = 4
            ce = 0
            
            }
            else{
            if test.text == ""{
            test.text = ""
            }else{
            gxt_chu = 1
            let r = Double(test.text!)!
            gxt_dy = String(r)
            test.text = ""
            number = 4
            ce = 0
            }
        }
            
    }
}
    
    @IBAction func gxt_cheng(_ sender: Any) {
        if gxt_cheng == 1{
            let x = Double(gxt_dy)!
            let y = Double(test.text!)!
            let z = x  * y
            gxt_dy = String(z)
            test.text = ""
            number = 3
            ce = 0
            
            }
            else{
            if test.text == ""{
            test.text = ""
            }else{
            gxt_cheng = 1
            let r = Double(test.text!)!
            gxt_dy = String(r)
            test.text = ""
            number = 3
            ce = 0
            }
        }
            
    }
}
    @IBAction func gxt_jian(_ sender: Any) {
        if gxt_jian == 1{
            let x = Double(gxt_dy)!
            let y = Double(test.text!)!
            let z = x - y
            gxt_dy = String(z)
            test.text = ""
            number = 2
            ce = 0
            
        }
            else{
              if test.text == ""{
                   test.text = ""
            }else{
              gxt_jian = 1
              let r = Double(test.text!)!
              gxt_dy = String(r)
              test.text = ""
              number = 1
              ce = 0
            }
        }
            
    }
}
    
    @IBAction func gxt_jia(_ sender: Any) {
        if gxt_jia == 1{
            let x = Double(gxt_dy)!
            let y = Double(test.text!)!
            let z = x + y
            gxt_dy = String(z)
            test.text = ""
            number = 1
            ce = 0
            
        }
        else{
            if test.text == ""{
                test.text = ""
            }else{
                gxt_jia = 1
                let r = Double(test.text!)!
                gxt_dy = String(r)
                test.text = ""
                number = 1
                ce = 0
            }
        }
        
    }
}
    
    @IBAction func gxt_0(_ sender: Any) {
        if ce == 1{
            test.text = "0"
        }
        else{
             test.text=test.text! + "0"
        }
        
    }
    @IBAction func gxt_9(_ sender: Any) {
        if ce == 1{
            test.text = "9"
        }
        else{
            test.text=test.text! + "9"
        }
        
    }
    @IBAction func gxt_8(_ sender: Any) {
        if ce == 1{
            test.text = "8"
        }
        else{
            test.text=test.text! + "8"
        }
        
    }
    @IBAction func gxt_7(_ sender: Any) {
        if ce == 1{
            test.text = "7"
        }
        else{
            test.text=test.text! + "7"
        }
        
    }
    @IBAction func gxt_6(_ sender: Any) {
        if ce == 1{
            test.text = "6"
        }
        else{
            test.text=test.text! + "6"
        }
        
    }
    @IBAction func gxt_5(_ sender: Any) {
        if ce == 1{
            test.text = "5"
        }
        else{
            test.text=test.text! + "5"
        }
        
    }
    @IBAction func gxt_4(_ sender: Any) {
        if ce == 1{
            test.text = "4"
        }
        else{
            test.text=test.text! + "4"
        }
        
    }
    @IBAction func gxt_3(_ sender: Any) {
        if ce == 1{
            test.text = "3"
        }
        else{
            test.text=test.text! + "3"
        }
        
    }
    @IBAction func gxt_2(_ sender: Any) {
        if ce == 1{
            test.text = "2"
        }
        else{
            test.text=test.text! + "2"
        }
        
    }
    @IBAction func gxt_1(_ sender: Any) {
        if ce == 1{
            test.text = "1"
        }
        else{
            test.text=test.text! + "1"
        }
        
    }
    @IBAction func gxt_a(_ sender: Any) {
            test.text = ""
            gxt_jia = 0
            gxt_jian = 0
            gxt_cheng = 0
            gxt_chu = 0
            }
    
    @IBAction func gxt_d(_ sender: Any) {
    }
    @IBAction func gxt_dy(_ sender: Any) {
        let x = Double(gxt_dy)!
        let y = Double(test.text!)!
        if number == 1
        {
            let z = x + y
            test.text = String(z)
        }
        if number == 2
        {
            let z = x - y
            test.text = String(z)
        }
        if number == 3
        {
            let z = x * y
            test.text = String(z)
        }
        if number == 4
        {
            let z = x / y
            test.text = String(z)
        }
        
}
    @IBOutlet weak var test: UITextField!
    var number = 0
    var gxt_jia = 0
    var gxt_jian = 0
    var gxt_cheng = 0
    var gxt_chu = 0
    var gxt_dy = ""
    var ce = 0
    
 
 
    
  
  
    var operatorFlag: String = ""
    override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

