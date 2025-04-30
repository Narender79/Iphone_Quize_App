//
//  ViewController.swift
//  Quizee
//
//  Created by Student on 21/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName = UserDefaults.standard.string(forKey: "userName")
        
        questionLabel.numberOfLines = 0 // Allow infinite lines
        questionLabel.lineBreakMode = .byWordWrapping
        // Wrap words, not letters
        optionA.numberOfLines = 0 // Allow infinite lines
        optionA.lineBreakMode = .byWordWrapping
        optionB.numberOfLines = 0 // Allow infinite lines
        optionB.lineBreakMode = .byWordWrapping
        optionC.numberOfLines = 0 // Allow infinite lines
        optionC.lineBreakMode = .byWordWrapping
        optionD.numberOfLines = 0 // Allow infinite lines
        optionD.lineBreakMode = .byWordWrapping
        loadQuestion()
        
    }
    

    var score = 0
    var currentQuestionIndex = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var optionA: UILabel!
    @IBOutlet weak var optionB: UILabel!
    @IBOutlet weak var optionC: UILabel!
    @IBOutlet weak var optionD: UILabel!
    @IBOutlet weak var endTestButton: UIButton!
    
    
    
    
    func loadQuestion() {
        // Make sure we haven't run out of questions
        if currentQuestionIndex < questionBank.count {
            let currentQuestion = questionBank[currentQuestionIndex]
            
            // Set the question label to the current question
            questionLabel.text = currentQuestion.text
            
            // Set the options in the four UILabels
            optionA.text = currentQuestion.options[0]
            optionB.text = currentQuestion.options[1]
            optionC.text = currentQuestion.options[2]
            optionD.text = currentQuestion.options[3]
            answerTextField.text = ""
            endTestButton.isHidden = true
        }else {
            // If no more questions, end the quiz
            questionLabel.text = "🎉 \(userName ?? "User")'s Quiz Complete!\nFinal Score: \(score)/\(questionBank.count)"
            optionA.isHidden = true
            optionB.isHidden = true
            optionC.isHidden = true
            optionD.isHidden = true
            answerTextField.isHidden = true
            submitButton.isHidden = true
            endTestButton.isHidden = false
        }
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard currentQuestionIndex < questionBank.count else { return }
        
        let userAnswer = answerTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let correctAnswer = questionBank[currentQuestionIndex].correctAnswer
        
        // Compare lowercase versions to make the check case-insensitive
        if userAnswer.lowercased() == correctAnswer.lowercased() {
            score += 1
            scoreLabel.text = "Score: \(score)"
        }
        
        // Move to next question
        currentQuestionIndex += 1
        loadQuestion()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}

