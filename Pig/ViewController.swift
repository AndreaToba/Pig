//
//  ViewController.swift
//  Pig
//
//  Created by Toba, Andrea I on 9/25/19.
//  Copyright © 2019 Toba, Andrea I. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var personWints: UILabel!
    @IBOutlet weak var turnScore: UILabel!
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var playerTurnLabel: UILabel!
    @IBOutlet var dieImage: UIImageView!
    var player1Turn: Bool = true
    var player1Score: Int = 0
    var player2Score: Int = 0
    var playerTurnScore: Int = 0
    var lostToOne: Bool=false // used for start img
    
    @IBOutlet var rollAgainButton: UIButton!
    @IBOutlet var playAgainButton: UIButton!
    @IBOutlet var endTurnButton: UIButton!
    @IBOutlet var textBubble: UIImageView!
    @IBOutlet weak var textBubbleLabel: UILabel!
    
    // sets to 0 and new game
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dieImage.image=UIImage(named: "start")
        personWints.isHidden=true
        playAgainButton.isHidden=true
        textBubble.isHidden=true
        textBubbleLabel.isHidden=true
    }

    // starts new round
    @IBAction func endTurn(_ sender: Any) {
        turnToTotal()
    }
    
    // changes dice img and score labels
    @IBAction func roll(_ sender: Any) {
        let randomInt = Int.random(in: 1..<6)
        print(randomInt)
        if(randomInt>0){
            dieImage.image=UIImage(named: "face\(randomInt)")
        }
        
        if (randomInt == 1){
            playerTurnScore = 0
            lostToOne=true;
            turnToTotal()
            
        }
        else{
            playerTurnScore += randomInt
            lostToOne=false;
        }
        turnScore.text="Score: \(playerTurnScore)"
        
     }
    
    // updates variables
    func turnToTotal(){
        if (player1Turn){
            player1Score += playerTurnScore
            playerTurnLabel.text="Player 2's Turn"
        }
        else{
            player2Score += playerTurnScore
            playerTurnLabel.text="Player 1's Turn"
        }
        
        // clears img
        if(lostToOne){
            dieImage.image=UIImage(named: "face1")}
        else{
            dieImage.image=UIImage(named: "start")
        }
        
        playerTurnScore = 0
        turnScore.text="Score: \(playerTurnScore)"
        player1Turn = !player1Turn
        
        // winner conditions
        if (player1Score >= 10){
            personWints.text="Player 1"
            personWints.isHidden=false
            playAgainButton.isHidden=false
            dieImage.image = UIImage(named: "win")
            rollAgainButton.isHidden=true
            endTurnButton.isHidden=true
            turnScore.isHidden=true
            playerTurnLabel.isHidden=true
        }
        else if(player2Score >= 10){
            personWints.text="Player 2"
            personWints.isHidden=false
            playAgainButton.isHidden=false
            dieImage.image = UIImage(named: "win")
            rollAgainButton.isHidden=true
            endTurnButton.isHidden=true
            turnScore.isHidden=true
            playerTurnLabel.isHidden=true
        }
       
        
        
        score1.text=("Player 1: \(player1Score)")
        score2.text=("Player 2: \(player2Score)")
        
        
    }
    
    // 
    @IBAction func playAgainPressed(_ sender: Any) {
        // reset all
        player1Turn = true
        player1Score = 0
        player2Score = 0
        playerTurnScore = 0
        lostToOne=false
        personWints.isHidden=true
        turnScore.text="Score: \(playerTurnScore)"
        score1.text="Player 1: \( player1Score)"
        score2.text="Player 2: \( player2Score)"
        playerTurnLabel.text="Player 1's Turn"
        personWints.isHidden=true
        playAgainButton.isHidden=true
        rollAgainButton.isHidden=false
        endTurnButton.isHidden=false
        turnScore.isHidden=false
        playerTurnLabel.isHidden=false
        

        dieImage.image = UIImage(named: "start")
    }
    
    @IBAction func secretButton(_ sender: Any) {
        textBubble.isHidden=false
        textBubbleLabel.isHidden=false
    }
}


