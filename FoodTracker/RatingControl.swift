//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Evan Turner on 2/2/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit

class RatingControl: UIView {
  //  MARK: Properties
  var rating = 0
  var ratingButtons = [UIButton]()
  
  //  MARK: Initialization
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    for _ in 0..<5 {
      let button = UIButton()
      button.backgroundColor = UIColor.redColor()
      button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
      ratingButtons += [button]
      addSubview(button)
    }
  }
  
  override func layoutSubviews() {
    //  Set the button's width and height to a square the size of the frame's height.
    let buttonSize = Int(frame.size.height)
    var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
    
    //  Offset each button's origin by the length of the button plus spacing.
    for (index, button) in ratingButtons.enumerate() {
      buttonFrame.origin.x = CGFloat(index * (buttonSize + 5))
      button.frame = buttonFrame
    }
  }
  
  override func intrinsicContentSize() -> CGSize {
    let buttonSize = Int(frame.size.height)
    let width = (buttonSize + spacing) * stars
    
    return CGSize(width: width, height: buttonSize)
  }
 
  //  MARK: Button Action
  func ratingButtonTapped(button: UIButton) {
    print("Button pressed 🇯🇵")
  }
  
}
