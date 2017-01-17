//
//  FoodTacker6_0Tests.swift
//  FoodTacker6.0Tests
//
//  Created by Rollin Francois on 1/12/17.
//  Copyright © 2017 Francois Technologies. All rights reserved.
//

import XCTest
@testable import FoodTacker6_0

class FoodTacker6_0Tests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        //Add tests to the test case that use both no rating and the highest positive rating.
        
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
        
    }
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        //let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        //XCTAssertNil(largeRatingMeal)
        
    }
    
}
