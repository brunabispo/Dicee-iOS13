//
//  ViewController.swift
//  Dicee-iOS13
//
//
//  Updated by Bruna Bispo on 07/01/2021

import UIKit

class ViewController: UIViewController {
    
    required init(coder: NSCoder) {
        self.diceArray = redDiceArray
        super.init(coder: coder)!
    }
    
    // IBOutlet allows to reference to a UI element
    // connection to the image on the Main.storyboard
    // to delete the connection, right click on the image and delete the connection
    // to rename it, right click on the name and refactor it
    // to connect just press control and drag the object to the code
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var segmentCheck: UISegmentedControl!
    
    
    let redDiceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    let yellowDiceArray = [#imageLiteral(resourceName: "dice_yellow_01"), #imageLiteral(resourceName: "dice_yellow_02"), #imageLiteral(resourceName: "dice_yellow_03"), #imageLiteral(resourceName: "dice_yellow_04"), #imageLiteral(resourceName: "dice_yellow_05"), #imageLiteral(resourceName: "dice_yellow_06")]
    
    
    var diceArray: Array<UIImage>
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex

        switch index {
        case 0:
            diceImageView1.image = redDiceArray[0]
            diceImageView2.image = redDiceArray[0]
        case 1:
            diceImageView1.image = yellowDiceArray[0]
            diceImageView2.image = yellowDiceArray[0]
        default:
            diceImageView1.image = redDiceArray[0]
            diceImageView2.image = redDiceArray[0]
        }
    }
    
    // triggered when the app first shows up on the device
    // not being used in this application
    override func viewDidLoad() {
        super.viewDidLoad()
//        changeDice(array: [redDiceArray][0])
        diceImageView1.image = redDiceArray[0]
        diceImageView2.image = redDiceArray[0]
        
    }
    
    // triggered if the Roll button gets pressed
    @IBAction func btnRollPressed(_ sender: UIButton) {
        
        changeDice(array: diceArray)
        
        let index = segmentCheck.selectedSegmentIndex
        
        switch index {
        case 0:
            diceImageView1.image = redDiceArray.randomElement()
            diceImageView2.image = redDiceArray.randomElement()
        case 1:
            diceImageView1.image = yellowDiceArray.randomElement()
            diceImageView2.image = yellowDiceArray.randomElement()
        default:
            diceImageView1.image = redDiceArray.randomElement()
            diceImageView2.image = redDiceArray.randomElement()
        }
    }
    
    func changeDice(array: [UIImage]) {
        diceImageView1.image = array.randomElement()
        diceImageView2.image = array.randomElement()
    }
    

    
    
    
    

}

