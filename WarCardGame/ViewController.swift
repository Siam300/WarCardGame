//
//  ViewController.swift
//  WarCardGame
//
//  Created by Auto on 7/3/25.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        print("DEBUG: Left number \(leftNumber) and Right number \(rightNumber)")
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        print("DEBUG: Deal button tapped.")
        
        if leftNumber > rightNumber {
            leftScore += 1
            
            leftScoreLabel.text = "\(leftScore)"
        } else if rightNumber > leftNumber {
            rightScore += 1
            
            rightScoreLabel.text = "\(rightScore)"
        } else {
            
        }
    }
    

}

