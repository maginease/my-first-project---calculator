//
//  CalcViewController.swift
//  test
//
//  Created by Minseo Kim on 1/17/21.
//

import UIKit
//import SwiftUI

class CalcViewController: UIViewController {
    
    // MARK: - IBOUtlets
    
    /// if I want to affect other button, set them as outlets, with class of UIButton!
    @IBOutlet weak var Viewer: UITextField!
    @IBOutlet weak var timesbutton: UIButton!
    @IBOutlet weak var plusbutton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    var number1 = 0
    var number2 = 0
    var Operator = ""
    
    var viewer:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - IBActions
    
    @IBAction func button1(sender:UIButton){
        
        Viewer.text! += "1"
    }
    
    
    @IBAction func button2(sender:UIButton){
        
        Viewer.text! += "2"
    }
    
    @IBAction func button3(sender:UIButton){
        
        Viewer.text! += "3"
    }
    
    @IBAction func button4(sender:UIButton){
        
        Viewer.text! += "4"
        
    }
    
    @IBAction func button5(sender:UIButton){
        
        Viewer.text! += "5"
        
    }
    
    @IBAction func button6(sender:UIButton){
        
        Viewer.text! += "6"
        
    }
    
    @IBAction func button7(sender:UIButton){
        
        Viewer.text! += "7"
        
    }
    
    @IBAction func button8(sender:UIButton){
        
        Viewer.text! += "8"
    }
    
    
    @IBAction func button9(sender:UIButton){
        
        Viewer.text! += "9"
        
    }
    
    @IBAction func button0(sender:UIButton){
        
        Viewer.text! += "0"
        
    }
    
    
    @IBAction func buttontimes(k:UIButton) {
        
        if let maycontainValue = Int(Viewer.text!) {
            
            number1 = maycontainValue
            
        } else {
            
            clear()
            
            Viewer.text = "Error"
            
        }
        
        clear()
        
        k.backgroundColor = UIColor.red
        
        Operator = "x"
    }
    
    
    @IBAction func buttonDivide(button: UIButton) {
        
        if let maycontainValue = Int(Viewer.text!){
            
            number1 = maycontainValue
            
        } else {
            
            clear()
            
            Viewer.text = "Error"
        }
        
        clear()
        
        button.backgroundColor = UIColor.red
        
        Operator = "/"
    }
    
    
    @IBAction func buttonminus(button:UIButton) {
        
        
        // MARK: security protection
        
        guard let viewers_text = Viewer.text else {
            
            return
        }
        
        
        if let maycontainValue = Int(viewers_text) {
            
            number1 = maycontainValue
            
        } else {
            
            clear()
            
            Viewer.text = "Error"
        }
        
        clear()
        
        button.backgroundColor = UIColor.red
        
        Operator = "-"
    }
    
    
    
    @IBAction func buttonplus(k:UIButton) {
        
        if let maycontainValue = Int(Viewer.text!){
            
            number1 = maycontainValue
            
        } else {
            
            clear()
            
            Viewer.text = "Error"
        }
        
        clear()
        
        k.backgroundColor = UIColor.red
        
        Operator = "+"
        
        
        
    }
    
    
 
    @IBAction func buttonEqual(button:UIButton) {
        
        
        timesbutton.backgroundColor = UIColor.white
        
        divideButton.backgroundColor = UIColor.white
        
        minusButton.backgroundColor = UIColor.white
        
        plusbutton.backgroundColor = UIColor.white
        
        
        if let maycontainValue = Int(Viewer.text!) {
            
            number2 = maycontainValue
            
        } else {
            
            clear()
            
            Viewer.text = "Error"
        }
        
        clear()
        
        switch Operator {
        
        case "+":

            Viewer.text = "\(number1 + number2)"
            
            
        case "-":
            
            Viewer.text = "\(number1 - number2)"
            
        case "x":
            
            
            Viewer.text = "\(number1 * number2)"
            
        case "/":
            
            if number2 == 0 {
                
                Viewer.text = "Error,Cannot be divided by zero(goes up to infinity) "
                
            } else {
                
                Viewer.text = "\(number1 / number2)"
            }
            
        default:
            
            Viewer.text = "Error"
        }
    }
    
    
    @IBAction func clearbutton(sender:UIButton){
        
        clear()
    }
    
    
    func clear(){
        
        Viewer.text = nil
    }
    
    
}


