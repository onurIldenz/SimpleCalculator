//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Onur İldeniz on 12.08.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var FirstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
     @IBAction func sumClicked(_ sender: Any) {
         if let firstNumber = Int(FirstText.text!), let secondNumber = Int(secondText.text!) {
             let result = firstNumber + secondNumber
             resultLabel.text = String(result)
         }
     }
    
    @IBAction func minusClicked(_ sender: Any) {
            if let firstNumber = Int(FirstText.text!), let secondNumber = Int(secondText.text!) {
                let result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    
        @IBAction func multiplyClicked(_ sender: Any) {
            if let firstNumber = Int(FirstText.text!), let secondNumber = Int(secondText.text!) {
                let result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }

    
    @IBAction func divideClicked(_ sender: Any) {
            if let firstNumber = Int(FirstText.text!), let secondNumber = Int(secondText.text!), secondNumber != 0 {
                let result = firstNumber / secondNumber
                resultLabel.text = String(result)
            } else {
                resultLabel.text = "Hata: 0'a bölme!"
            }
        }
    }
