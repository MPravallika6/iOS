//
//  ViewController.swift
//  TextApp
//
//  Created by Maddelavedu,Pravallika on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldenter: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var labeldisplay: UILabel!
    @IBAction func onClickButton(_ sender: UIButton) {
        let input = Int (textfieldenter.text!)
                if(input!%2 == 0){
                    labeldisplay.text = "\(input!) is even number"
                }
                else{
                    labeldisplay.text = "\(input!) is odd number"
                }
                
            }
    }
    
   

