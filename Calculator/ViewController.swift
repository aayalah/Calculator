//
//  ViewController.swift
//  Calculator
//
//  Created by Alejandro Ayala-Hurtado on 10/18/16.
//  Copyright © 2016 MobileApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    let calculator: CalculatorBrain = CalculatorBrain()
    
    @IBAction func setOperand(_ sender: UIButton) {
        var isUserTyping = false
        if let number = Double(sender.currentTitle!) {
            if(!isUserTyping) {
                outputLabel.text = String(number)
                isUserTyping = true
            } else {
                outputLabel.text = outputLabel.text! + String(number)
            }
        }
 
    }
    
    
    
    @IBAction func enterOperator(_ sender: UIButton) {
    }
    
    
    
    
    
    
    
    
}

