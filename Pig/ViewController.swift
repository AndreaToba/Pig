//
//  ViewController.swift
//  Pig
//
//  Created by Toba, Andrea I on 9/25/19.
//  Copyright © 2019 Toba, Andrea I. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var turnScore: UILabel!
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var playerTurnLabel: UILabel!
    @IBOutlet var dieImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func endTurn(_ sender: Any) {
    }
    
    @IBAction func roll(_ sender: Any) {
        let randomInt = Int.random(in: 1..<6)
        print(randomInt)
        if(randomInt>0){
            dieImage.image=UIImage(named: "face\(randomInt)")
        }
        else{
            print("-1")
        }
        
    }
}

