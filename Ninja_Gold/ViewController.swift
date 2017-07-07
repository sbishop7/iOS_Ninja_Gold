//
//  ViewController.swift
//  Ninja_Gold
//
//  Created by Seth Bishop on 7/7/17.
//  Copyright © 2017 Seth Bishop. All rights reserved.
//

import UIKit

var score = 0

class ViewController: UIViewController {

    @IBOutlet weak var ScoreLabel: UILabel!
    
    @IBOutlet weak var FarmGoldEarned: UILabel!
    
    @IBOutlet weak var CaveGoldEarned: UILabel!
    
    @IBOutlet weak var HouseGoldEarned: UILabel!
    
    @IBOutlet weak var CasinoGoldEarned: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FarmGoldEarned.isHidden = true
        CaveGoldEarned.isHidden = true
        HouseGoldEarned.isHidden = true
        CasinoGoldEarned.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func BuildingButtonPressed(_ sender: UIButton) {
        print (sender.tag)
        if sender.tag == 1 {
            let goldEarned = Int(arc4random_uniform(11))+10
            score += goldEarned
            FarmGoldEarned.text = "You earned \(goldEarned) gold"
            ScoreLabel.text = "\(score)"
            FarmGoldEarned.isHidden = false
            CaveGoldEarned.isHidden = true
            HouseGoldEarned.isHidden = true
            CasinoGoldEarned.isHidden = true
        }
        else if sender.tag == 2 {
            let goldEarned = Int(arc4random_uniform(6))+5
            score += goldEarned
            CaveGoldEarned.text = "You earned \(goldEarned) gold"
            ScoreLabel.text = "\(score)"

            FarmGoldEarned.isHidden = true
            CaveGoldEarned.isHidden = false
            HouseGoldEarned.isHidden = true
            CasinoGoldEarned.isHidden = true
        }
        else if sender.tag == 3 {
            let goldEarned = Int(arc4random_uniform(4))+2
            score += goldEarned
            HouseGoldEarned.text = "You earned \(goldEarned) gold"
            ScoreLabel.text = "\(score)"

            FarmGoldEarned.isHidden = true
            CaveGoldEarned.isHidden = true
            HouseGoldEarned.isHidden = false
            CasinoGoldEarned.isHidden = true
        }
        else if sender.tag == 4 {
            let goldEarned = Int(arc4random_uniform(101))-50
            score += goldEarned
            CasinoGoldEarned.text = "You earned \(goldEarned) gold"
            ScoreLabel.text = "\(score)"

            FarmGoldEarned.isHidden = true
            CaveGoldEarned.isHidden = true
            HouseGoldEarned.isHidden = true
            CasinoGoldEarned.isHidden = false
        }
        
    }

    @IBAction func ResetButtonPressed(_ sender: UIButton) {
        FarmGoldEarned.isHidden = true
        CaveGoldEarned.isHidden = true
        HouseGoldEarned.isHidden = true
        CasinoGoldEarned.isHidden = true
        score = 0
        ScoreLabel.text = "\(score)"
    }

}

