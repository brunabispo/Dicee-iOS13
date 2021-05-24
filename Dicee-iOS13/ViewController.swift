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
    
    @IBOutlet weak var diceImage2: UIImageView!
    @IBOutlet weak var diceImage1: UIImageView!
    
    @IBOutlet weak var segmentCheck: UISegmentedControl!
    
    @IBOutlet weak var lblN1: UILabel!
    
    @IBOutlet weak var lblN2: UILabel!
    
    let redDiceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    let yellowDiceArray = [#imageLiteral(resourceName: "dice_yellow_01"), #imageLiteral(resourceName: "dice_yellow_02"), #imageLiteral(resourceName: "dice_yellow_03"), #imageLiteral(resourceName: "dice_yellow_04"), #imageLiteral(resourceName: "dice_yellow_05"), #imageLiteral(resourceName: "dice_yellow_06")]
    
    
    var diceArray: Array<UIImage>
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex

        switch index {
        case 0:
            diceImage2.image = redDiceArray[0]
            diceImage1.image = redDiceArray[0]
        case 1:
            diceImage2.image = yellowDiceArray[0]
            diceImage1.image = yellowDiceArray[0]
        default:
            diceImage2.image = redDiceArray[0]
            diceImage1.image = redDiceArray[0]
        }
        
        lblN1.text = ""
        lblN2.text = ""
    }
    
    // triggered when the app first shows up on the device
    // not being used in this application
    override func viewDidLoad() {
        super.viewDidLoad()
//        changeDice(array: [redDiceArray][0])
        diceImage2.image = redDiceArray[0]
        diceImage1.image = redDiceArray[0]
        
        lblN1.text = ""
        lblN2.text = ""
    }
    
    // triggered if the Roll button gets pressed
    @IBAction func btnRollPressed(_ sender: UIButton) {
        
        changeDice(array: diceArray)
        
        let index = segmentCheck.selectedSegmentIndex
        
        switch index {
        case 0:
            diceImage2.image = redDiceArray.randomElement()
            diceImage1.image = redDiceArray.randomElement()
        case 1:
            diceImage2.image = yellowDiceArray.randomElement()
            diceImage1.image = yellowDiceArray.randomElement()
        default:
            diceImage2.image = redDiceArray.randomElement()
            diceImage1.image = redDiceArray.randomElement()
        }
        
        if diceImage1.image == #imageLiteral(resourceName: "DiceOne") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_01") {
            lblN1.text = "1"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceTwo") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_02") {
            lblN1.text = "2"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceThree") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_03") {
            lblN1.text = "3"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceFour") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_04") {
            lblN1.text = "4"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceFive") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_05") {
            lblN1.text = "5"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceSix") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_06") {
            lblN1.text = "6"
        }
        
        if diceImage2.image == #imageLiteral(resourceName: "DiceOne") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_01") {
            lblN2.text = "1"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceTwo") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_02") {
            lblN2.text = "2"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceThree") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_03") {
            lblN2.text = "3"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceFour") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_04") {
            lblN2.text = "4"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceFive") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_05") {
            lblN2.text = "5"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceSix") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_06") {
            lblN2.text = "6"
        }
    }
    
    func changeDice(array: [UIImage]) {
        diceImage2.image = array.randomElement()
        diceImage1.image = array.randomElement()
    }
    

    
    
    
    

}

