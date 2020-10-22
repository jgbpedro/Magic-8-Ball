//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by José Guilherme on 19/10/20.
//  Copyright © 2020 José Guilherme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallIndex : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBallNumber()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBallNumber()
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        randomBallNumber()
    }
    
    func randomBallNumber(){
        randomBallIndex = Int(arc4random_uniform(5)) + 1
        imageView.image = UIImage(named: "ball\(randomBallIndex)")
    }
    
    


}

