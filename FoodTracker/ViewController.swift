//
//  ViewController.swift
//  FoodTracker
//
//  Created by Evan Turner on 1/29/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  // MARK: Properties
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var mealNameLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Handle the text field's user input through delegate callbacks.
    nameTextField.delegate = self
  }
  
  // MARK: UITextFieldDelegate
  func textFieldShouldReturn(textField: UITextField) -> Bool {

    // Hide the keyboard.
    textField.resignFirstResponder()
    return true
  }
  
  // MARK: Actions
  @IBAction func setDefaultLabelText(sender: UIButton) {
    mealNameLabel.text = "Default Text"
  }
  
  
}

