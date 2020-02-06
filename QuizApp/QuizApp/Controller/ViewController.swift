//
//  ViewController.swift
//  QuizApp
//
//  Created by Ranjan, Nishant [GCB-OT NE] on 18/1/20.
//  Copyright © 2020 Ranjan, Nishant [GCB-OT NE]. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    var quizBrain = QuizBrain()
    
    
    
//    let quiz = [
//        Question(text: "A slug's blood is green.", answer: "True")
//    ]
    
    //let quiz = [["A slug's blood is green.", "True"],["The total surface area of two human lungs is approximately 70 square metres.", "True"], ["No piece of square dry paper can be folded in half more than 7 times.", "False"]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //questionLabel.text = "A slug's blood is green."
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userGotRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotRight {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        //updateUI()
    }
    
   @objc func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
    
        progressBar.progress = quizBrain.getProgress()
    
    scoreLabel.text = "Score: \(quizBrain.getScore())"
        self.trueButton.backgroundColor = UIColor.clear
        self.falseButton.backgroundColor = UIColor.clear
        
    }
    
  
}

