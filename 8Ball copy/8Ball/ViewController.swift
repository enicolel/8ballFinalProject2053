//
//  ViewController.swift
//  8Ball
//
//  Created by Erica Nicolelli on 4/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    let ballChange =
    [
        UIImage(named: "1"),
        UIImage(named: "2"),
        UIImage(named: "3"),
        UIImage(named: "4"),
        UIImage(named: "5"),
        UIImage(named: "6"),
        UIImage(named: "7"),
        UIImage(named: "8"),
        UIImage(named: "9"),
    ]

    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerImageView.image = UIImage(named: "8ball 1")
    }

    @IBAction func buttonClick(_ sender: Any)
    {

        var randomInt = Int.random(in: 1..<9)
        
        guard let image = ballChange[randomInt] else {
            print("None: \(randomInt)")
            return
        }
        
        answerImageView.image = image
        
        print("The answer has been revealed!")
    }
    

}

