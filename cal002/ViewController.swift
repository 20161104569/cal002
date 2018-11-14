//
//  ViewController.swift
//  cal002
//
//  Created by 20161104569 on 2018/9/28.
//  Copyright © 2018年 20161104569. All rights reserved.
//

import UIKit
class ViewController: UIViewController{
    var pt = 0   //控制加减乘除
    var previousnumber:Double = 0.0
    
    var latternumber:Double = 0.0
    
    var result:Double = 0.0
    
    var ca = 0 //判断加减乘除
    @IBOutlet weak var test: UITextField!
    @IBAction func gxt_point(_ sender: Any) {
        if pt == 0{
            test.text = test.text! + "."
            
            pt=1
            
        }
        else{
            test.text=test.text
        }
        
    }
    
    
    @IBAction func gxt_chu(_ sender: Any) {
        if test.text == " "{
            test.text = "0"
            ca = 4
        }else{
            previousnumber = Double(test.text!)!
           
            test.text = ""
             ca = 4
            pt=0
        }
    }
    
    @IBAction func gxt_cheng(_ sender: Any) {
        if test.text == " "{
            test.text = "0"
            ca = 3
        }else{
            previousnumber = Double(test.text!)!
           
            test.text = ""
            ca = 3
            pt=0
        }
}

    @IBAction func gxt_jian(_ sender: Any) {
        if test.text == " "{
            test.text = "0"
            ca = 2
        }else{
            previousnumber = Double(test.text!)!
           
            test.text = ""
            ca = 2
            pt=0
        }
}
    @IBAction func gxt_jia(_ sender: Any) {
        if test.text == ""{
            test.text = "0"
            ca = 1
        }else{
            previousnumber = Double(test.text!)!
           
            test.text = ""
            ca = 1
            pt=0
        }
    }
    @IBAction func gxt_0(_ sender: Any) {
        test.text = test.text! + "0"
    }
    @IBAction func gxt_9(_ sender: Any) {
        test.text = test.text! + "9"
    }
    @IBAction func gxt_8(_ sender: Any) {
        test.text = test.text! + "8"
    }
    @IBAction func gxt_7(_ sender: Any) {
        test.text = test.text! + "7"
    }
    @IBAction func gxt_6(_ sender: Any) {
        test.text = test.text! + "6"
    }
    @IBAction func gxt_5(_ sender: Any) {
        test.text = test.text! + "5"
    }
    @IBAction func gxt_4(_ sender: Any) {
        test.text = test.text! + "4"
    }
    @IBAction func gxt_3(_ sender: Any) {
        test.text = test.text! + "3"
    }
    @IBAction func gxt_2(_ sender: Any) {
        test.text = test.text! + "2"
    }
    @IBAction func gxt_1(_ sender: Any) {
        test.text = test.text! + "1"
    }
    
    @IBAction func gxt_d(_ sender: Any) {
        test.text = ""
        previousnumber = 0
        latternumber = 0
        pt = 0
        
    }
    
    @IBAction func gxt_dy(_ sender: Any) {
        //latternumber = Double(test.text!)!
        //test.text = String(latternumber)
        //test.text = "0"
        if ca == 1{
            latternumber = Double(test.text!)!
            test.text = String(latternumber)
            test.text = "0"
            result = previousnumber + latternumber
            test.text = String(format:"%.2lf",result)
        }else if ca == 2{
            latternumber = Double(test.text!)!
            test.text = String(latternumber)
            test.text = "0"
            result =  previousnumber - latternumber
             test.text = String(format:"%.2lf",result)
        }else if ca == 3{
            latternumber = Double(test.text!)!
            test.text = String(latternumber)
            test.text = "0"
            result =  previousnumber * latternumber
             test.text = String(format:"%.2lf",result)
        }else if ca == 4{
            latternumber = Double(test.text!)!
            test.text = String(latternumber)
            test.text = "0"
            result =  previousnumber / latternumber
             test.text = String(format:"%.2lf",result)
        }
        
        
           pt = 0
    }
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.}
  
}

}




