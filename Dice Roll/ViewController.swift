//
//  ViewController.swift
//  Dice Roll
//
//  Created by Daniel Barclay on 31/05/2019.
//  Copyright © 2019 Daniel Barclay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }
    
    let diceOptionsArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()
    }
    
    func updateDice() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage.init(named: diceOptionsArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage.init(named: diceOptionsArray[randomDiceIndex2])
    }
    
}

