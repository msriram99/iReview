//
//  ViewController.swift
//  iReview
//
//  Created by Himaja Motheram on 3/26/17.
//  Copyright © 2017 Sriram Motheram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var restuarantNameLabel        :UILabel!
    @IBOutlet var yourNameTextField :UITextField!
    @IBOutlet var yourReviewTextView        :UITextView!
    @IBOutlet var recommendSwitch    :UISwitch!
    @IBOutlet var overallRatingSlider    :UISlider!
    @IBOutlet var foodRatingSegControl  :UISegmentedControl!
    
    @IBAction func submitButtonPressed(button: UIButton) {
        guard let name = yourNameTextField.text else {
            return
        }
        restuarantNameLabel .text = "\(name) Favorite Restaurant"
          print("Customer Name: \(yourNameTextField .text)")
          print("Review Text: \(yourReviewTextView.text)")
          print("Overall Rating: \(overallRatingSlider.value)")
          print("Food Rating: \(foodRatingSegControl.selectedSegmentIndex)")
          print("Recommended: \(recommendSwitch.isOn)")
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //yourNameTextField.delegate = self
        recommendSwitch.isOn = false
        
        overallRatingSlider.value = 0.35
        foodRatingSegControl.selectedSegmentIndex = 0
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

