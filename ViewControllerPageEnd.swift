//
//  ViewControllerPageEnd.swift
//  Quizee
//
//  Created by Student on 28/04/25.
//

import UIKit

class ViewControllerPageEnd: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        congratsLable.numberOfLines = 0
                congratsLable.lineBreakMode = .byWordWrapping
                scoreLable.numberOfLines = 0
                scoreLable.lineBreakMode = .byWordWrapping
                
                // Set the text
                congratsLable.text = "🎉 Congratulations on Completing the Quiz!"
                scoreLable.text = "Your Final Score: \(finalScore)/\(totalQuestions)"
                
                // Optional: Add a background image or styling
                let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
                backgroundImage.image = UIImage(named: "Image") // Use the same background as login if desired
                backgroundImage.contentMode = .scaleAspectFill
                self.view.insertSubview(backgroundImage, at: 0)
        congratsLable.text = "hello"
    }
    
    @IBOutlet weak var congratsLable: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    
    
    var finalScore: Int = 0
    var totalQuestions: Int = 0

}
