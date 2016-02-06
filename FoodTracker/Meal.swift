//
//  Meal.swift
//  FoodTracker
//
//  Created by Evan Turner on 2/3/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit

class Meal: NSObject, NSCoding {
 
  //   MARK: Properties
  var name: String
  var photo: UIImage?
  var rating: Int
  
  //   MARK: Initialization
  init?(name: String, photo: UIImage?, rating: Int) {
    //  Initialize stored properties.
    self.name = name
    self.photo = photo
    self.rating = rating
    
    //  Initialization should fail if there is no name or if the rating is negative.
    if name.isEmpty || rating < 0 {
      return nil
    }
  }
  
  //  MARK: Types
  struct PropertyKey {
    static let nameKey = "name"
    static let photoKey = "photo"
    static let ratingKey = "rating"
  }
  
  //  MARK: NSCoding
  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(name, forKey: PropertyKey.nameKey)
    aCoder.encodeObject(photo, forKey: PropertyKey.photoKey)
    aCoder.encodeInteger(rating, forKey: PropertyKey.ratingKey)
  }
}
