//
//  ViewControllerFrontLogin.swift
//  Quizee
//
//  Created by Student on 28/04/25.
//

import UIKit

class ViewControllerFrontLogin: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeNote.numberOfLines = 0 // Allow infinite lines
        welcomeNote.lineBreakMode = .byWordWrapping
        welcomeNote1.numberOfLines = 0 // Allow infinite lines
        welcomeNote1.lineBreakMode = .byWordWrapping
        
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Image")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)

    }
    
    
    @IBOutlet weak var welcomeNote: UILabel!
    
    @IBOutlet weak var welcomeNote1: UILabel!
    
    @IBAction func startQuiz(_ sender: Any) {
        let userName = nameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
                
                // Check if the name is not empty
                if !userName.isEmpty {
                    // Store the name and navigate to the quiz
                    UserDefaults.standard.set(userName, forKey: "userName")
                    performSegue(withIdentifier: "toQuiz", sender: self)
                } else {
                    // Alert if the name is empty
                    let alert = UIAlertController(title: "Error", message: "Please enter your name to proceed", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    present(alert, animated: true, completion: nil)
                }
    }
    
    
}
