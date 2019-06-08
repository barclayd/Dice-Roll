//
//  ViewController.swift
//  Dice Roll
//
//  Created by Daniel Barclay on 31/05/2019.
//  Copyright © 2019 Daniel Barclay. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int!
    var randomDiceIndex2: Int!
    
    @IBOutlet weak var diceImgView1: UIImageView!
    @IBOutlet weak var diceImgView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
        AudioServicesPlaySystemSound(1520)
    }
    
    let diceOptionsArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()
    }
    
    func updateDice() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImgView1.image = UIImage.init(named: diceOptionsArray[randomDiceIndex1])
        
        diceImgView2.image = UIImage.init(named: diceOptionsArray[randomDiceIndex2])
    }
    
}

