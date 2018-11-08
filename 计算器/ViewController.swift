//
//  ViewController.swift
//  计算器
//
//  Created by 王皎 on 2018/11/1.
//  Copyright © 2018 王皎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp = 0.0
    var flag = 0
    var calFlag = 0
    @IBOutlet weak var CACULATERDisplay: UITextField!
    
    @IBAction func button0(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"0"}
        else{
            CACULATERDisplay.text = "0"
        }
        calFlag = 1
    }
    @IBAction func button1(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"1"}
        else{
             CACULATERDisplay.text = "1"
        }
        calFlag = 1
    }
    @IBAction func button2(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"2"}
        else{
            CACULATERDisplay.text = "2"
        }
        calFlag = 1
    }
    @IBAction func button3(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"3"}
        else{
            CACULATERDisplay.text = "3"
        }
        calFlag = 1
    }
    @IBAction func button4(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"4"}
        else{
            CACULATERDisplay.text = "4"
        }
        calFlag = 1
    }
    @IBAction func button5(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"5"}
        else{
            CACULATERDisplay.text = "5"
        }
        calFlag = 1
    }
    @IBAction func button6(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"6"}
        else{
            CACULATERDisplay.text = "6"
        }
        calFlag = 1
    }
    @IBAction func button7(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"7"}
        else{
            CACULATERDisplay.text = "7"
        }
        calFlag = 1
    }
    @IBAction func button8(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"8"}
        else{
            CACULATERDisplay.text = "8"
        }
        calFlag = 1
    }
    @IBAction func button9(_ sender: Any) {
        if(calFlag == 1){
            CACULATERDisplay.text = CACULATERDisplay.text!+"9"}
        else{
            CACULATERDisplay.text = "9"
        }
        calFlag = 1
    }
    @IBAction func buttonadd(_ sender: Any) {
        if(flag == 1){
           CACULATERDisplay.text = "\(temp + Double(CACULATERDisplay.text!)!)"
        }
        temp = Double(CACULATERDisplay.text!)!
        calFlag = 2
        flag = 1
    }
    @IBAction func buttonsub(_ sender: Any) {
        if(flag == 2){
            CACULATERDisplay.text = "\(temp - Double(CACULATERDisplay.text!)!)"
        }
        temp = Double(CACULATERDisplay.text!)!
        calFlag = 2
        flag = 2
    }
    
    @IBAction func buttonmul(_ sender: Any) {
        if(flag == 3){
            CACULATERDisplay.text = "\(temp * Double(CACULATERDisplay.text!)!)"
        }
        temp = Double(CACULATERDisplay.text!)!
        flag = 3
        calFlag = 2
    }
    @IBAction func buttondis(_ sender: Any) {
        if(flag == 4){
            CACULATERDisplay.text = "\(temp / Double(CACULATERDisplay.text!)!)"
        }
        temp = Double(CACULATERDisplay.text!)!
        flag = 4
        calFlag = 2
    }
    @IBAction func buttonculater(_ sender: Any) {
        if flag==1{
            //var sum = 0.00
            CACULATERDisplay.text = "\(temp + Double(CACULATERDisplay.text!)!)"
          //CACULATERDisplay.text = "\(sum)"
        }
        if flag==2{
            //var subtraction = 0.00
            CACULATERDisplay.text = "\(temp - Double(CACULATERDisplay.text!)!)"
           // CACULATERDisplay.text = "\(subtraction)"
    }
        if flag==3{
            //var multiplication = 0.00
           CACULATERDisplay.text = "\(temp * Double(CACULATERDisplay.text!)!)"
            //CACULATERDisplay.text = "\(multiplication)"
        }
        if flag==4{
            //var division = 0.00
            if(CACULATERDisplay.text=="0"){
                CACULATERDisplay.text = "错误"
            }
            else {
                CACULATERDisplay.text = "\(temp / Double(CACULATERDisplay.text!)!)"
            }
           // CACULATERDisplay.text = "\(division)"       }
        calFlag = 2
        }
    }
    @IBAction func buttonclear(_ sender: Any) {
        temp = 0.0
        flag = 0
        calFlag = 0
        CACULATERDisplay.text = "0"
    }
    @IBAction func buttonD(_ sender: Any) {
        CACULATERDisplay.text = CACULATERDisplay.text!+"."
    }
    
    @IBAction func BUTTON(_ sender: Any) {
        temp = Double(CACULATERDisplay.text!)!
        temp = temp*0.01
        CACULATERDisplay.text = "\(temp)"
    }
    @IBAction func BUTTON1(_ sender: Any) {
        temp = Double(CACULATERDisplay.text!)!
        temp = temp * temp
        CACULATERDisplay.text = "\(temp)"
    }
    @IBAction func BUTTON2(_ sender: Any) {
        temp = Double(CACULATERDisplay.text!)!
        temp = sqrt (temp);
        CACULATERDisplay.text = "\(temp)"
    }
    @IBAction func BUTTON3(_ sender: Any) {
        temp = Double(CACULATERDisplay.text!)!
        temp = temp * (-1);
        CACULATERDisplay.text = "\(temp)"
    }
    @IBAction func BUTTON4(_ sender: Any) {
         CACULATERDisplay.text = "\(3.14159265358)"
    }
    @IBAction func BUTTON5(_ sender: Any) {
           CACULATERDisplay.text = "\(2.718281828459045)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        CACULATERDisplay.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }


}

