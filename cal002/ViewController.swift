//
//  ViewController.swift
//  cal002
//
//  Created by 20161104569 on 2018/9/28.
//  Copyright © 2018年 20161104569. All rights reserved.
//

import UIKit
class ViewController: UIViewController{
    @IBOutlet weak var test: UITextField!
    var firstNumber = 0
    
    var secondNumber = 0
    
    var result = 0
    
    var ca = 0       //判断加减乘除
    
    @IBAction func gxt_p(_ sender: Any) {
        test.text = ""

        firstNumber = 0
       
        secondNumber = 0    }
    
    
    @IBAction func gxt_chu(_ sender: Any) {
        if test.text == " "{
            test.text = "0"
            ca = 4
        }else{
            firstNumber = Int(test.text!)!
            test.text = String(firstNumber)
            test.text = ""
             ca = 4
        }
    }
    
    @IBAction func gxt_cheng(_ sender: Any) {
        if test.text == " "{
            test.text = "0"
            ca = 3
        }else{
            firstNumber = Int(test.text!)!
            test.text = String(firstNumber)
            test.text = ""
            ca = 3
        }
}

    @IBAction func gxt_jian(_ sender: Any) {
        if test.text == " "{
            test.text = "0"
            ca = 2
        }else{
            firstNumber = Int(test.text!)!
            test.text = String(firstNumber)
            test.text = ""
            ca = 2
        }
}
    @IBAction func gxt_jia(_ sender: Any) {
        if test.text == ""{
            test.text = "0"
            ca = 1
        }else{
            firstNumber = Int(test.text!)!
            test.text = String(firstNumber)
            test.text = ""
            ca = 1
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
        firstNumber = 0
        secondNumber = 0
    }
    
    @IBAction func gxt_dy(_ sender: Any) {
        secondNumber = Int(test.text!)!
        test.text = String(secondNumber)
        test.text = "0"
        if ca == 1{
            result = firstNumber + secondNumber
        }else if ca == 2{
            result = firstNumber - secondNumber
        }else if ca == 3{
            result = firstNumber * secondNumber
        }else if ca == 4{
            result = firstNumber / secondNumber
        }
        
            test.text = String(result)
        }
    
    
    
   

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.}
  
}

}




