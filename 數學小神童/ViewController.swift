//
//  ViewController.swift
//  數學小神童
//
//  Created by 蔡佳穎 on 2021/5/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var multiplyBtn: UIButton!
    @IBOutlet weak var dividedBtn: UIButton!
    
    var secondTextClose: String = ""
    var plus = ""
    var minus = ""
    var multiply = ""
    var divided = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text = ""
    }

    func calculate() {
        
        let firstText = firstTextField.text!
        let secendText = secondTextField.text!
        let first = Int(firstText)
        let second = Int(secendText)
        
        if let first = first, let second = second {
            if plus == "true" {
                answerLabel.text = "\(first + second)"
                answerLabel.sizeToFit()
                answerLabel.center = CGPoint(x: view.frame.width * 0.5, y: 579)
            } else if minus == "true" {
                answerLabel.text = "\(first - second)"
                answerLabel.sizeToFit()
                answerLabel.center = CGPoint(x: view.frame.width * 0.5, y: 579)
            } else if multiply == "true" {
                answerLabel.text = "\(first * second)"
                answerLabel.sizeToFit()
                answerLabel.center = CGPoint(x: view.frame.width * 0.5, y: 579)
            } else {
                answerLabel.text = "\(first / second)"
                answerLabel.sizeToFit()
                answerLabel.center = CGPoint(x: view.frame.width * 0.5, y: 579)
            }
        }
    }
    
    @IBAction func plus(_ sender: UIButton) {
        plus = "true"
    }
    
    @IBAction func minus(_ sender: UIButton) {
        minus = "true"
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        multiply = "true"
    }
    
    @IBAction func divided(_ sender: UIButton) {
        divided = "true"
    }
    
    @IBAction func firstCalculate(_ sender: UITextField) {
        //收鍵盤
        secondTextClose = secondTextField.text!
        
        //運算
        calculate()
    }
    @IBAction func secondCalculate(_ sender: UITextField) {
        //收鍵盤
        secondTextClose = secondTextField.text!
        
        //運算
        calculate()
    }
}

