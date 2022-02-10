//
//  ViewController.swift
//  DisplayApp
//
//  Created by Maddelavedu,Pravallika on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayImage: UIImageView!
    
    @IBOutlet weak var CrsNum: UILabel!
    
    @IBOutlet weak var CrsTitle: UILabel!
    
    @IBOutlet weak var CrsSem: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
                   ["img02", "44666", "iOS", "Spring 2022" ],
                   ["img03", "44999", "Data Streaming", "Summer 2022"]]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Load the first course details (image, course/num, title, and sem)
        updateUI(imageNumber)
        // previous button should be disabled
        previousButton.isEnabled=false
    }

    
    @IBAction func previousButtonClick(_ sender: UIButton) {
        //next button should be enabled
        nextButton.isEnabled = true
        //update UI
        imageNumber -= 1
        updateUI(imageNumber)
        //when the course position is at 0, the previous button should be disabled.
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
    }
    
    @IBAction func nextBuutonClick(_ sender: UIButton) {
        //update the UI
        imageNumber += 1
        updateUI(imageNumber)
        //previous button should be enabled
        previousButton.isEnabled = true
        //once you reach the end of array, the next buuton should be disabled
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
    }
    func updateUI(_ imageNum: Int)
    {
        DisplayImage.image = UIImage(named: courses[imageNum][0])
        CrsNum.text = courses[imageNum][1]
        CrsTitle.text = courses[imageNum][2]
        CrsSem.text = courses[imageNum][3]
    }
}


