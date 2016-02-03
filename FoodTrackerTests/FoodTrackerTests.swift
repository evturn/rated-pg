//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Evan Turner on 1/29/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
  
  //  MARK: FoodTracker Tests
  
  // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
  func testMealInitialization() {
    //  Success case.
    let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
    XCTAssertNotNil(potentialItem)
  }
}
