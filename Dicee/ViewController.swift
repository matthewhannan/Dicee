//
//  ViewController.swift
//  Dicee
//
//  Created by Matt Hannan on 9/6/18.
//  Copyright © 2018 Matthew Hannan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randDiceIndex1 : Int = 0;
    var randDiceIndex2 : Int = 0;
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    func updateDiceImages(){
        
        randDiceIndex1 = Int(arc4random_uniform(6))
        randDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randDiceIndex2])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }
    
}

