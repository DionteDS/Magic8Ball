//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Dionte Silmon on 8/24/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var askQuestionText: UITextField!
    @IBOutlet weak var questionLabel: UILabel!
    
    // array to hold the names of the random 8 ball images.
    let ballImageNames = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        askQuestionText.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        questionLabel.text = textField.text
    }
    
    // Have the random 8 ball display an answer.
    func shakeMagicBall() {
        
        let randomNumber = Int.random(in: 0..<5)
        
        imageView.image = UIImage(named: ballImageNames[randomNumber])
    }
    
    @IBAction func tapButtonTapped(_ sender: UIButton) {
        shakeMagicBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeMagicBall()
    }
    

}

