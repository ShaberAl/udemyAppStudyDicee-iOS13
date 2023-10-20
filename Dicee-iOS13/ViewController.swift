//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let dicesImages = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDices()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDices()
    }
    
    func updateDices() {
        diceImageViewOne.image = dicesImages[Int.random(in: 0..<dicesImages.count)]
        diceImageViewTwo.image = dicesImages[Int.random(in: 0..<dicesImages.count)]
    }
}

