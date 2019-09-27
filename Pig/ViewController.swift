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
    var player1Turn: Bool = true
    var player1Score: Int = 0
    var player2Score: Int = 0
    var playerTurnScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func endTurn(_ sender: Any) {
        turnToTotal()
    }
    
    @IBAction func roll(_ sender: Any) {
        let randomInt = Int.random(in: 0..<6)
        dieImage.image=UIImage(named: "face\(randomInt)")
        
        if (randomInt == 1){
            playerTurnScore = 0
            turnToTotal()
        }
        else{
            playerTurnScore += randomInt
        }
     }
    
    func turnToTotal(){
        if (player1Turn){
            player1Score += playerTurnScore
        }
        else{
            player2Score += playerTurnScore
        }
        player1Turn = !player1Turn
    }
    
}

