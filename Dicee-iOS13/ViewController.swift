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
    let pinkBlueDiceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    let blueDiceArray = [#imageLiteral(resourceName: "diceBlue1"), #imageLiteral(resourceName: "diceBlue2"), #imageLiteral(resourceName: "diceBlue3"), #imageLiteral(resourceName: "diceBlue4"), #imageLiteral(resourceName: "diceBlue5"), #imageLiteral(resourceName: "diceBlue6")]
    
    
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
        case 2:
            diceImage2.image = pinkBlueDiceArray[0]
            diceImage1.image = pinkBlueDiceArray[0]
        case 3:
            diceImage2.image = blueDiceArray[0]
            diceImage1.image = blueDiceArray[0]
        default:
            diceImage2.image = redDiceArray[0]
            diceImage1.image = redDiceArray[0]
        }
        
        lblN1.text = ""
        lblN2.text = ""
        
        lblN1.backgroundColor = UIColor.clear
        lblN2.backgroundColor = UIColor.clear
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
        lblN1.backgroundColor = UIColor.clear
        lblN2.backgroundColor = UIColor.clear
    }
    
    // triggered if the Roll button gets pressed
    @IBAction func btnRollPressed(_ sender: UIButton) {
        
        changeDice(array: diceArray)
        
        lblN1.backgroundColor = UIColor.systemGray4
        lblN2.backgroundColor = UIColor.systemGray4
        
        let index = segmentCheck.selectedSegmentIndex
        
        switch index {
        case 0:
            diceImage2.image = redDiceArray.randomElement()
            diceImage1.image = redDiceArray.randomElement()
        case 1:
            diceImage2.image = yellowDiceArray.randomElement()
            diceImage1.image = yellowDiceArray.randomElement()
        case 2:
            diceImage2.image = pinkBlueDiceArray.randomElement()
            diceImage1.image = pinkBlueDiceArray.randomElement()
        case 3:
            diceImage2.image = blueDiceArray.randomElement()
            diceImage1.image = blueDiceArray.randomElement()
        default:
            diceImage2.image = redDiceArray.randomElement()
            diceImage1.image = redDiceArray.randomElement()
        }
        
        if diceImage1.image == #imageLiteral(resourceName: "DiceOne") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_01") || diceImage1.image == #imageLiteral(resourceName: "dice1") || diceImage1.image == #imageLiteral(resourceName: "diceBlue1"){
            lblN1.text = "1"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceTwo") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_02") || diceImage1.image == #imageLiteral(resourceName: "dice2") || diceImage1.image == #imageLiteral(resourceName: "diceBlue2") {
            lblN1.text = "2"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceThree") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_03") || diceImage1.image == #imageLiteral(resourceName: "dice3") || diceImage1.image == #imageLiteral(resourceName: "diceBlue3") {
            lblN1.text = "3"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceFour") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_04") || diceImage1.image == #imageLiteral(resourceName: "dice4") || diceImage1.image == #imageLiteral(resourceName: "diceBlue4") {
            lblN1.text = "4"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceFive") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_05") || diceImage1.image == #imageLiteral(resourceName: "dice5") || diceImage1.image == #imageLiteral(resourceName: "diceBlue5") {
            lblN1.text = "5"
        }
        else if diceImage1.image == #imageLiteral(resourceName: "DiceSix") || diceImage1.image == #imageLiteral(resourceName: "dice_yellow_06") || diceImage1.image == #imageLiteral(resourceName: "dice6") || diceImage1.image == #imageLiteral(resourceName: "diceBlue6") {
            lblN1.text = "6"
        }
        
        if diceImage2.image == #imageLiteral(resourceName: "DiceOne") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_01") || diceImage2.image == #imageLiteral(resourceName: "dice1") || diceImage2.image == #imageLiteral(resourceName: "diceBlue1") {
            lblN2.text = "1"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceTwo") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_02") || diceImage2.image == #imageLiteral(resourceName: "dice2") || diceImage2.image == #imageLiteral(resourceName: "diceBlue2") {
            lblN2.text = "2"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceThree") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_03") || diceImage2.image == #imageLiteral(resourceName: "dice3") || diceImage2.image == #imageLiteral(resourceName: "diceBlue3") {
            lblN2.text = "3"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceFour") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_04") || diceImage2.image == #imageLiteral(resourceName: "dice4") || diceImage2.image == #imageLiteral(resourceName: "diceBlue4") {
            lblN2.text = "4"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceFive") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_05") || diceImage2.image == #imageLiteral(resourceName: "dice5") || diceImage2.image == #imageLiteral(resourceName: "diceBlue5") {
            lblN2.text = "5"
        }
        else if diceImage2.image == #imageLiteral(resourceName: "DiceSix") || diceImage2.image == #imageLiteral(resourceName: "dice_yellow_06") || diceImage2.image == #imageLiteral(resourceName: "dice6") || diceImage2.image == #imageLiteral(resourceName: "diceBlue6") {
            lblN2.text = "6"
        }
    }
    
    func changeDice(array: [UIImage]) {
        diceImage2.image = array.randomElement()
        diceImage1.image = array.randomElement()
    }
}

