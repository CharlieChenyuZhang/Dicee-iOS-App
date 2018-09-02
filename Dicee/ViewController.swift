//
//  ViewController.swift
//  Dicee
//
//  Created by charliezhang on 2018-09-01.
//  Copyright © 2018 Chenyu Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // this function got trigeered only when the screen got loads up
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // begin with random dice faces
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPresed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        // generate numbers from 0 to 5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // update the image
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1 + 1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2 + 1)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        // update the dice face when the shaking motion ended
        updateDiceImages()
    }
    
}

