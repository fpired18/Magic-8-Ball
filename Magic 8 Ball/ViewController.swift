//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by frederic on 30/11/2018.
//  Copyright © 2018 fpired. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
        
    }


    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0...4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    func motionEnded() {
       newBallImage()
    }
}

