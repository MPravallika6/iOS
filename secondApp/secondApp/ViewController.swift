//
//  ViewController.swift
//  secondApp
//
//  Created by Maddelavedu,Pravallika on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var calculator: UILabel!
    
    
    @IBOutlet weak var result: UILabel!
    
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcOperator:Character = " "
    
    @IBAction func buttonnumber6(_ sender: Any) {
        result.text = result.text! + "6"
        if operand1 == -1.1 {
            operand1 = 6
        }
        else {
            operand2 = 6
        }
    }
    
    @IBAction func buttonnumber9(_ sender: Any) {
        result.text = result.text! + "9"
        if operand2 == -1.1 {
            operand2 = 9
        }
        else {
            operand1 = 9
        }
    }
    
    @IBAction func plus(_ sender: Any) {
        result.text = result.text! +  "+"
        if calcOperator == " " {
            calcOperator = "+"
        }
    }
    
    @IBAction func equalto(_ sender: Any) {
        result.text = result.text! + "="
        if (calcOperator == "+") {
            result.text = result.text! + "\(operand1+operand2)"
        }
    }
}

