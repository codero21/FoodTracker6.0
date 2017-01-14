//
//  RatingControl.swift
//  FoodTacker6.0
//
//  Created by Rollin Francois on 1/12/17.
//  Copyright © 2017 Francois Technologies. All rights reserved.
//

import UIKit

// @IBDesignable. This lets Interface Builder instantiate and draw a 
// copy of your control directly in the canvas
@IBDesignable class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    

    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    
    //MARK: Button Action
    func ratingsButtonTapped(button: UIButton) {
        print("Button Pressed! 👍🏾")
    }
    
    
    // //MARK: Private Methods
    private func setupButtons() {
        
        // clear any existing buttons
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.willRemoveSubview(button)
        }
        
    for _ in 0..<starCount {
        
        // Create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
        button.widthAnchor.constraint(equalToConstant: starSize.width).isActive =  true
        
        // Setup the button action
        button.addTarget(self, action: #selector(RatingControl.ratingsButtonTapped(button:)),
                         for: .touchUpInside)
        
        // Add the button to the stack
        addArrangedSubview(button)
        
        // Add the new button to the rating button array
        ratingButtons.append(button)
    }
  }
    
}

