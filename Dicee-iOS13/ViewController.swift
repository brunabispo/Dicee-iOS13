//
//  ViewController.swift
//  Dicee-iOS13
//
//
//  Updated by Bruna Bispo on 07/01/2021

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    @IBOutlet weak var diceImage3: UIImageView!
    @IBOutlet weak var diceImage4: UIImageView!
    
    @IBOutlet weak var segmentCheck: UISegmentedControl!
    
    @IBOutlet weak var lblN1: UILabel!
    @IBOutlet weak var lblN2: UILabel!
    @IBOutlet weak var lblN3: UILabel!
    @IBOutlet weak var lblN4: UILabel!
    
    @IBOutlet weak var lblNumDices: UILabel!
    
    var cnt: Int = 1 {
        didSet {
            lblNumDices.text = "\(cnt)"
        }
    }
    
    @IBAction func stepChange(_ sender: UIStepper) {
        cnt = Int(sender.value)
        
        if cnt == 1 {
            if segmentCheck.selectedSegmentIndex == 0 {
                diceImage1.image = redDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 1 {
                diceImage1.image = yellowDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 2 {
                diceImage1.image = pinkBlueDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 3 {
                diceImage1.image = blueDiceArray[0]
            }
            
            lblN1.text = "1"
            lblN1.backgroundColor = UIColor.systemGray4
            
            diceImage2.isHidden = true
            lblN2.isHidden = true
            lblN2.backgroundColor = UIColor.clear
            
            diceImage3.isHidden = true
            lblN3.isHidden = true
            lblN3.backgroundColor = UIColor.clear
            
            diceImage4.isHidden = true
            lblN4.isHidden = true
            lblN4.backgroundColor = UIColor.clear
        }
        
        if cnt == 2 {
            if segmentCheck.selectedSegmentIndex == 0 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 1 {
                diceImage1.image = yellowDiceArray[0]
                diceImage2.image = yellowDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 2 {
                diceImage1.image = pinkBlueDiceArray[0]
                diceImage2.image = pinkBlueDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 3 {
                diceImage1.image = blueDiceArray[0]
                diceImage2.image = blueDiceArray[0]
            }
            
            diceImage2.isHidden = false
            lblN2.isHidden = false
            lblN2.backgroundColor = UIColor.systemGray4
            lblN1.text = "1"
            lblN2.text = "1"
            
            diceImage3.isHidden = true
            lblN3.isHidden = true
            lblN3.backgroundColor = UIColor.clear
            
            diceImage4.isHidden = true
            lblN4.isHidden = true
            lblN4.backgroundColor = UIColor.clear
        }
        
        if cnt == 3 {
            if segmentCheck.selectedSegmentIndex == 0 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
                diceImage3.image = redDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 1 {
                diceImage1.image = yellowDiceArray[0]
                diceImage2.image = yellowDiceArray[0]
                diceImage3.image = yellowDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 2 {
                diceImage1.image = pinkBlueDiceArray[0]
                diceImage2.image = pinkBlueDiceArray[0]
                diceImage3.image = pinkBlueDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 3 {
                diceImage1.image = blueDiceArray[0]
                diceImage2.image = blueDiceArray[0]
                diceImage3.image = blueDiceArray[0]
            }
            
            diceImage2.isHidden = false
            diceImage3.isHidden = false
            lblN2.isHidden = false
            lblN3.isHidden = false
            lblN2.backgroundColor = UIColor.systemGray4
            lblN3.backgroundColor = UIColor.systemGray4
            lblN1.text = "1"
            lblN2.text = "1"
            lblN3.text = "1"
            
            diceImage4.isHidden = true
            lblN4.isHidden = true
            lblN4.backgroundColor = UIColor.clear
        }
        
        if cnt == 4 {
            if segmentCheck.selectedSegmentIndex == 0 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
                diceImage3.image = redDiceArray[0]
                diceImage4.image = redDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 1 {
                diceImage1.image = yellowDiceArray[0]
                diceImage2.image = yellowDiceArray[0]
                diceImage3.image = yellowDiceArray[0]
                diceImage4.image = yellowDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 2 {
                diceImage1.image = pinkBlueDiceArray[0]
                diceImage2.image = pinkBlueDiceArray[0]
                diceImage3.image = pinkBlueDiceArray[0]
                diceImage4.image = pinkBlueDiceArray[0]
            }
            if segmentCheck.selectedSegmentIndex == 3 {
                diceImage1.image = blueDiceArray[0]
                diceImage2.image = blueDiceArray[0]
                diceImage3.image = blueDiceArray[0]
                diceImage4.image = blueDiceArray[0]
            }
            
            diceImage2.isHidden = false
            diceImage3.isHidden = false
            diceImage4.isHidden = false
            lblN2.isHidden = false
            lblN3.isHidden = false
            lblN4.isHidden = false
            lblN2.backgroundColor = UIColor.systemGray4
            lblN3.backgroundColor = UIColor.systemGray4
            lblN4.backgroundColor = UIColor.systemGray4
            lblN1.text = "1"
            lblN2.text = "1"
            lblN3.text = "1"
            lblN4.text = "1"
        }
    }
    
    let redDiceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    let yellowDiceArray = [#imageLiteral(resourceName: "dice_yellow_01"), #imageLiteral(resourceName: "dice_yellow_02"), #imageLiteral(resourceName: "dice_yellow_03"), #imageLiteral(resourceName: "dice_yellow_04"), #imageLiteral(resourceName: "dice_yellow_05"), #imageLiteral(resourceName: "dice_yellow_06")]
    let pinkBlueDiceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    let blueDiceArray = [#imageLiteral(resourceName: "diceBlue1"), #imageLiteral(resourceName: "diceBlue2"), #imageLiteral(resourceName: "diceBlue3"), #imageLiteral(resourceName: "diceBlue4"), #imageLiteral(resourceName: "diceBlue5"), #imageLiteral(resourceName: "diceBlue6")]
    
    var diceArray: Array<UIImage> = []
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex

        switch index {
        case 0:
            if cnt == 1 {
                diceImage1.image = redDiceArray[0]
                lblN1.text = "1"
            }
            else if cnt == 2 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
            }
            else if cnt == 3 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
                diceImage3.image = redDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
            }
            else if cnt == 4 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
                diceImage3.image = redDiceArray[0]
                diceImage4.image = redDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
                lblN4.text = "1"
            }
        case 1:
            if cnt == 1 {
                diceImage1.image = yellowDiceArray[0]
                lblN1.text = "1"
            }
            if cnt == 2 {
                diceImage1.image = yellowDiceArray[0]
                diceImage2.image = yellowDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
            }
            if cnt == 3 {
                diceImage1.image = yellowDiceArray[0]
                diceImage2.image = yellowDiceArray[0]
                diceImage3.image = yellowDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
            }
            if cnt == 4 {
                diceImage1.image = yellowDiceArray[0]
                diceImage2.image = yellowDiceArray[0]
                diceImage3.image = yellowDiceArray[0]
                diceImage4.image = yellowDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
                lblN4.text = "1"
            }
        case 2:
            if cnt == 1 {
                diceImage1.image = pinkBlueDiceArray[0]
                lblN1.text = "1"
            }
            if cnt == 2 {
                diceImage1.image = pinkBlueDiceArray[0]
                diceImage2.image = pinkBlueDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
            }
            if cnt == 3 {
                diceImage1.image = pinkBlueDiceArray[0]
                diceImage2.image = pinkBlueDiceArray[0]
                diceImage3.image = pinkBlueDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
            }
            if cnt == 4 {
                diceImage1.image = pinkBlueDiceArray[0]
                diceImage2.image = pinkBlueDiceArray[0]
                diceImage3.image = pinkBlueDiceArray[0]
                diceImage4.image = pinkBlueDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
                lblN4.text = "1"
            }
        case 3:
            if cnt == 1 {
                diceImage1.image = blueDiceArray[0]
                lblN1.text = "1"
            }
            if cnt == 2 {
                diceImage1.image = blueDiceArray[0]
                diceImage2.image = blueDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
            }
            if cnt == 3 {
                diceImage1.image = blueDiceArray[0]
                diceImage2.image = blueDiceArray[0]
                diceImage3.image = blueDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
            }
            if cnt == 4 {
                diceImage1.image = blueDiceArray[0]
                diceImage2.image = blueDiceArray[0]
                diceImage3.image = blueDiceArray[0]
                diceImage4.image = blueDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
                lblN4.text = "1"
            }
        default:
            if cnt == 1 {
                diceImage1.image = redDiceArray[0]
                lblN1.text = "1"
            }
            else if cnt == 2 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
            }
            else if cnt == 3 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
                diceImage3.image = redDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
            }
            else if cnt == 4 {
                diceImage1.image = redDiceArray[0]
                diceImage2.image = redDiceArray[0]
                diceImage3.image = redDiceArray[0]
                diceImage4.image = redDiceArray[0]
                lblN1.text = "1"
                lblN2.text = "1"
                lblN3.text = "1"
                lblN4.text = "1"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImage1.image = redDiceArray[0]
        
        lblN1.text = "1"
        lblN2.text = ""
        lblN3.text = ""
        lblN4.text = ""

        lblN2.backgroundColor = UIColor.clear
        lblN3.backgroundColor = UIColor.clear
        lblN4.backgroundColor = UIColor.clear
        
        lblNumDices.text = "\(cnt)"
    }
    
    // triggered when the Roll button gets pressed
    @IBAction func btnRollPressed(_ sender: UIButton) {
        
        changeDice(array: diceArray)
        
        let index = segmentCheck.selectedSegmentIndex
        
        switch index {
        case 0:
            if cnt == 1 {
                diceImage1.image = redDiceArray.randomElement()
            }
            else if cnt == 2 {
                diceImage1.image = redDiceArray.randomElement()
                diceImage2.image = redDiceArray.randomElement()
            }
            else if cnt == 3 {
                diceImage1.image = redDiceArray.randomElement()
                diceImage2.image = redDiceArray.randomElement()
                diceImage3.image = redDiceArray.randomElement()
            }
            else if cnt == 4 {
                diceImage1.image = redDiceArray.randomElement()
                diceImage2.image = redDiceArray.randomElement()
                diceImage3.image = redDiceArray.randomElement()
                diceImage4.image = redDiceArray.randomElement()
            }
        case 1:
            if cnt == 1 {
                diceImage1.image = yellowDiceArray.randomElement()
            }
            else if cnt == 2 {
                diceImage1.image = yellowDiceArray.randomElement()
                diceImage2.image = yellowDiceArray.randomElement()
            }
            else if cnt == 3 {
                diceImage1.image = yellowDiceArray.randomElement()
                diceImage2.image = yellowDiceArray.randomElement()
                diceImage3.image = yellowDiceArray.randomElement()
            }
            else if cnt == 4 {
                diceImage1.image = yellowDiceArray.randomElement()
                diceImage2.image = yellowDiceArray.randomElement()
                diceImage3.image = yellowDiceArray.randomElement()
                diceImage4.image = yellowDiceArray.randomElement()
            }
        case 2:
            if cnt == 1 {
                diceImage1.image = pinkBlueDiceArray.randomElement()
            }
            else if cnt == 2 {
                diceImage1.image = pinkBlueDiceArray.randomElement()
                diceImage2.image = pinkBlueDiceArray.randomElement()
            }
            else if cnt == 3 {
                diceImage1.image = pinkBlueDiceArray.randomElement()
                diceImage2.image = pinkBlueDiceArray.randomElement()
                diceImage3.image = pinkBlueDiceArray.randomElement()
            }
            else if cnt == 4 {
                diceImage1.image = pinkBlueDiceArray.randomElement()
                diceImage2.image = pinkBlueDiceArray.randomElement()
                diceImage3.image = pinkBlueDiceArray.randomElement()
                diceImage4.image = pinkBlueDiceArray.randomElement()
            }
        case 3:
            if cnt == 1 {
                diceImage1.image = blueDiceArray.randomElement()
            }
            else if cnt == 2 {
                diceImage1.image = blueDiceArray.randomElement()
                diceImage2.image = blueDiceArray.randomElement()
            }
            else if cnt == 3 {
                diceImage1.image = blueDiceArray.randomElement()
                diceImage2.image = blueDiceArray.randomElement()
                diceImage3.image = blueDiceArray.randomElement()
            }
            else if cnt == 4 {
                diceImage1.image = blueDiceArray.randomElement()
                diceImage2.image = blueDiceArray.randomElement()
                diceImage3.image = blueDiceArray.randomElement()
                diceImage4.image = blueDiceArray.randomElement()
            }
        default:
            if cnt == 1 {
                diceImage1.image = redDiceArray.randomElement()
            }
            else if cnt == 2 {
                diceImage1.image = redDiceArray.randomElement()
                diceImage2.image = redDiceArray.randomElement()
            }
            else if cnt == 3 {
                diceImage1.image = redDiceArray.randomElement()
                diceImage2.image = redDiceArray.randomElement()
                diceImage3.image = redDiceArray.randomElement()
            }
            else if cnt == 4 {
                diceImage1.image = redDiceArray.randomElement()
                diceImage2.image = redDiceArray.randomElement()
                diceImage3.image = redDiceArray.randomElement()
                diceImage4.image = redDiceArray.randomElement()
            }
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
        
        if diceImage3.image == #imageLiteral(resourceName: "DiceOne") || diceImage3.image == #imageLiteral(resourceName: "dice_yellow_01") || diceImage3.image == #imageLiteral(resourceName: "dice1") || diceImage3.image == #imageLiteral(resourceName: "diceBlue1") {
            lblN3.text = "1"
        }
        else if diceImage3.image == #imageLiteral(resourceName: "DiceTwo") || diceImage3.image == #imageLiteral(resourceName: "dice_yellow_02") || diceImage3.image == #imageLiteral(resourceName: "dice2") || diceImage3.image == #imageLiteral(resourceName: "diceBlue2") {
            lblN3.text = "2"
        }
        else if diceImage3.image == #imageLiteral(resourceName: "DiceThree") || diceImage3.image == #imageLiteral(resourceName: "dice_yellow_03") || diceImage3.image == #imageLiteral(resourceName: "dice3") || diceImage3.image == #imageLiteral(resourceName: "diceBlue3") {
            lblN3.text = "3"
        }
        else if diceImage3.image == #imageLiteral(resourceName: "DiceFour") || diceImage3.image == #imageLiteral(resourceName: "dice_yellow_04") || diceImage3.image == #imageLiteral(resourceName: "dice4") || diceImage3.image == #imageLiteral(resourceName: "diceBlue4") {
            lblN3.text = "4"
        }
        else if diceImage3.image == #imageLiteral(resourceName: "DiceFive") || diceImage3.image == #imageLiteral(resourceName: "dice_yellow_05") || diceImage3.image == #imageLiteral(resourceName: "dice5") || diceImage3.image == #imageLiteral(resourceName: "diceBlue5") {
            lblN3.text = "5"
        }
        else if diceImage3.image == #imageLiteral(resourceName: "DiceSix") || diceImage3.image == #imageLiteral(resourceName: "dice_yellow_06") || diceImage3.image == #imageLiteral(resourceName: "dice6") || diceImage3.image == #imageLiteral(resourceName: "diceBlue6") {
            lblN3.text = "6"
        }
        
        if diceImage4.image == #imageLiteral(resourceName: "DiceOne") || diceImage4.image == #imageLiteral(resourceName: "dice_yellow_01") || diceImage4.image == #imageLiteral(resourceName: "dice1") || diceImage4.image == #imageLiteral(resourceName: "diceBlue1") {
            lblN4.text = "1"
        }
        else if diceImage4.image == #imageLiteral(resourceName: "DiceTwo") || diceImage4.image == #imageLiteral(resourceName: "dice_yellow_02") || diceImage4.image == #imageLiteral(resourceName: "dice2") || diceImage4.image == #imageLiteral(resourceName: "diceBlue2") {
            lblN4.text = "2"
        }
        else if diceImage4.image == #imageLiteral(resourceName: "DiceThree") || diceImage4.image == #imageLiteral(resourceName: "dice_yellow_03") || diceImage4.image == #imageLiteral(resourceName: "dice3") || diceImage4.image == #imageLiteral(resourceName: "diceBlue3") {
            lblN4.text = "3"
        }
        else if diceImage4.image == #imageLiteral(resourceName: "DiceFour") || diceImage4.image == #imageLiteral(resourceName: "dice_yellow_04") || diceImage4.image == #imageLiteral(resourceName: "dice4") || diceImage4.image == #imageLiteral(resourceName: "diceBlue4") {
            lblN4.text = "4"
        }
        else if diceImage4.image == #imageLiteral(resourceName: "DiceFive") || diceImage4.image == #imageLiteral(resourceName: "dice_yellow_05") || diceImage4.image == #imageLiteral(resourceName: "dice5") || diceImage4.image == #imageLiteral(resourceName: "diceBlue5") {
            lblN4.text = "5"
        }
        else if diceImage4.image == #imageLiteral(resourceName: "DiceSix") || diceImage4.image == #imageLiteral(resourceName: "dice_yellow_06") || diceImage4.image == #imageLiteral(resourceName: "dice6") || diceImage4.image == #imageLiteral(resourceName: "diceBlue6") {
            lblN4.text = "6"
        }
        
    }
    
    func changeDice(array: [UIImage]) {
        diceImage1.image = array.randomElement()
        diceImage2.image = array.randomElement()
        diceImage3.image = array.randomElement()
        diceImage4.image = array.randomElement()
    }
}

