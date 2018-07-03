//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Gursharnbir Singh on 2018-07-03.
//  Copyright © 2018 Gursharnbir Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5", "ball6"]
    
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomImageGen()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        randomImageGen()
    }
    
    func randomImageGen(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballImageArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomImageGen()
    }
}

