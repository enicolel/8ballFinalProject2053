//
//  ViewController.swift
//  8Ball
//
//  Created by Erica Nicolelli on 4/27/23.
//

import UIKit
import Firebase
import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseStorage


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
    @IBOutlet weak var textField: UITextField!
    
    
    var questionAsked: String = ""
    
//    var body: some View {
//        VStack {
//            TextField("Enter a yes or no question", text: $questionAsked)
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //FirebaseApp.configure()
        answerImageView.image = UIImage(named: "8ball 1")
        
    }

//    @IBAction func buttonClick(_ sender: Any) --> erica original
    
    @IBAction func buttonClick(_ sender: Any)
    {
        
        var randomInt = Int.random(in: 0..<ballChange.count)
        answerImageView.image = ballChange[randomInt]
        print("The answer has been revealed!")
//        guard let image = ballChange[randomInt]
//        else {
//            print("None: \(randomInt)")
//            return
//        }
//
//        answerImageView.image = image
//
//
    }
    
    
    @IBAction func checkTextField(_ sender:Any) {
        guard let text = textField.text, !text.isEmpty else {
            print("Text Field is empty")
            return
        }
        questionAsked = text
        addInfo(questionAsked)
//        if let text = textField.text, text.isEmpty {
//            print("Text Field is empty")
//            return
//        }
//        else {
//            self.AddInfo(self.questionAsked)
//        }
    }
    func addInfo(_ question: String){
        let db = Firestore.firestore()
        db.collection("Questions").addDocument(data: ["Question Asked": question])
        }
    }


