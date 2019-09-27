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
     //   UIImage.rotate(180)
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


/*extension UIImage {
    func rotate(radians: CGFloat) -> UIImage {
        let rotatedSize = CGRect(origin: .zero, size: size)
            .applying(CGAffineTransform(rotationAngle: CGFloat(radians)))
            .integral.size
        UIGraphicsBeginImageContext(rotatedSize)
        if let context = UIGraphicsGetCurrentContext() {
            let origin = CGPoint(x: rotatedSize.width / 2.0,
                                 y: rotatedSize.height / 2.0)
            context.translateBy(x: origin.x, y: origin.y)
            context.rotate(by: radians)
            draw(in: CGRect(x: -origin.y, y: -origin.x,
                            width: size.width, height: size.height))
            let rotatedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return rotatedImage ?? self
        }
        
        return self
    }
 }*/

