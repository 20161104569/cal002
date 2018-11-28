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
    var sec = ""
    var fir = ""
    var fh = ""
    @IBAction func symbol(_ sender: Any) {
        if test.text == "-"{
            test.text?.removeFirst()
    }
    else {
        test.text = "-" + test.text!
    }
 }
        
    @IBOutlet weak var test: UITextField!
    @IBAction func gxt_point(_ sender: Any) {
        if pt == 0{
            sec = sec + "."
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
            
            fir = String(previousnumber)
            fh = "/"
            test.text = fir + fh
            
             ca = 4
            pt=0
            sec = ""
            fir = ""
        }
    }
    
    
    @IBAction func gxt_cheng(_ sender: Any) {
        if test.text == " "{
            test.text = "0"
            ca = 3
        }else{
            previousnumber = Double(test.text!)!
            
            fir = String(previousnumber)
            fh = "*"
            test.text = fir + fh
            
            ca = 3
            pt=0
            sec = ""
            fir = ""
        }
}

    @IBAction func gxt_jian(_ sender: Any) {
        if test.text == " "{
            test.text = "0"
            ca = 2
        }else{
            previousnumber = Double(test.text!)!
            
            fir = String(previousnumber)
            fh = "-"
            test.text = fir + fh
            
            ca = 2
            pt=0
            sec = ""
            fir = ""
        }
}
    @IBAction func gxt_jia(_ sender: Any) {
        if test.text == ""{
            test.text = "0"
            ca = 1
        }else{
            previousnumber = Double(test.text!)!
            
            fir = String(previousnumber)
            fh = "+"
            test.text = fir + fh
            
            ca = 1
            pt=0
            sec = ""
           fir = ""
        }
    }
    @IBAction func gxt_0(_ sender: Any) {
        
       
        sec = sec + "0"
        test.text = test.text! + "0"
        if ca != 0{
            
            test.text = fir + fh + sec
            
        }
    }
    @IBAction func gxt_9(_ sender: Any) {
       
        sec = sec + "9"
        test.text = test.text! + "9"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }

    }
    @IBAction func gxt_8(_ sender: Any) {
        sec = sec + "8"
        test.text = test.text! + "8"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }
    }
    @IBAction func gxt_7(_ sender: Any) {
        sec = sec + "7"
        test.text = test.text! + "7"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }
    }
    @IBAction func gxt_6(_ sender: Any) {
        sec = sec + "6"
        test.text = test.text! + "6"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }
    }
    @IBAction func gxt_5(_ sender: Any) {
        sec = sec + "5"
        test.text = test.text! + "5"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }
    }
    @IBAction func gxt_4(_ sender: Any) {
        sec = sec + "4"
        test.text = test.text! + "4"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }
    }
    @IBAction func gxt_3(_ sender: Any) {
        sec = sec + "3"
        test.text = test.text! + "3"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }
    }
    @IBAction func gxt_2(_ sender: Any) {
        sec = sec + "2"
        test.text = test.text! + "2"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }
    }
    @IBAction func gxt_1(_ sender: Any) {
        sec = sec + "1"
        test.text = test.text! + "1"
        if ca != 0 {
            fir = String(previousnumber)
            test.text = fir + fh + sec
        }
    }
    
    @IBAction func gxt_d(_ sender: Any) {
        test.text = ""
        previousnumber = 0
        latternumber = 0
        pt = 0
        sec = ""
        fir = ""
        ca = 0
        fh = ""
    }
    
    @IBAction func gxt_dy(_ sender: Any) {
        latternumber = Double(sec)!
        test.text = String(latternumber)
        test.text = "0"
        if ca == 1{
           
            result = previousnumber + latternumber
              test.text = fir + fh + sec + "=" + String(format:"%.2lf",result)
        }else if ca == 2{
           
            result =  previousnumber - latternumber
               test.text = fir + fh + sec + "=" + String(format:"%.2lf",result)
        }else if ca == 3{
            
            result =  previousnumber * latternumber
              test.text = fir + fh + sec + "=" + String(format:"%.2lf",result)
        }else if ca == 4{
            if latternumber == 0
            {
                test.text = "除数不能为零 "
            }
            else{
            result =  previousnumber / latternumber
               
                test.text = fir + fh + sec + "=" + String(format:"%.2lf",result)
            }
        }
        
        
        
    }
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.}
  
}

}

