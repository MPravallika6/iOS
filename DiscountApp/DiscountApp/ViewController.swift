//
//  ViewController.swift
//  DiscountApp
//
//  Created by Maddelavedu,Pravallika on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var typeAmount: UITextField!
    
    
    @IBOutlet weak var typeDiscount: UITextField!
    
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    @IBOutlet weak var displayAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickButton(_ sender: UIButton) {
        let Amount = Double (typeAmount.text!)!
        let Discount = Double (typeDiscount.text!)!
        var discount = Double((Amount*Discount)/100)
        displayAmount.text! = "the amount is: \(Amount-Discount)"
    }
    
    
}

