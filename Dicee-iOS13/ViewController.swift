//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//
//  Updated by Bruna Bispo on 07/01/2021

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows to reference to a UI element
    // connection to the image on the Main.storyboard
    // to delete the connection, right click on the image and delete the connection
    // to rename it, right click on the name and refactor it
    // to connect just press control and drag the object to the code
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    // triggered when the app first shows up on the device
    // not being used in this application
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // triggered if the Roll button gets pressed
    @IBAction func btnRollPressed(_ sender: UIButton) {
//        print("Button got tapped") // print to the debug console
        
        // who.what = value
            // who needs to be changed
            // what needs to be changed
            // set the new value
        
        // changing the image
//        diceImageView1.image = #imageLiteral(resourceName: "DiceSix") // image literal
//
//        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
//        // changing the alpha (transparency) of the image
//        diceImageView1.alpha = 0.5
        
        // create an array of all the dice sides
        //                      [ collection of items ][ item wanted ]
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // Generate a random number
        // closed range -> (in: lower...upper)
        // half open range -> (in: lower..< upper) ---- does not include the upper
        
//        let randLeftDice = Int.random(in: 0...5)
//        let randRightDice = Int.random(in: 0...5)
        
        // randomElement() -> gets a random item from a collection
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
    }
    

}

