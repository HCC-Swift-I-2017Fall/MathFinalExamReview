//
//  EndReviewViewController.swift
//  MathFinalExamReview
//
//  Created by Prakash Sachania on 12/13/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import UIKit

class EndReviewViewController: UIViewController {

    var numberOfNotAttempted: Int = 0
    var numberOfCorrect: Int = 0
    var numberOfIncorrect: Int = 0
    var totalQuestions: Int = 0

    
    @IBOutlet weak var totalQuestionsLabel: UILabel!
    @IBOutlet weak var attemptedQuestionsLabel: UILabel!
    @IBOutlet weak var correctAnswersLabel: UILabel!
    @IBOutlet weak var incorrectAnswerLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("********* End of Review ***********")
        
        // Do any additional setup after loading the view.

        updateValuesAttemptedCorrectIncorrect()

        totalQuestionsLabel.text = String(totalQuestions)
        attemptedQuestionsLabel.text = String(totalQuestions - numberOfNotAttempted)
        correctAnswersLabel.text = String(numberOfCorrect)
        incorrectAnswerLabel.text = String(numberOfIncorrect)
        
        print("Double(numberOfCorrect * 100 / totalQuestions) = \(Double(numberOfCorrect * 100 / totalQuestions))")
        
        if (Double(numberOfCorrect * 100 / totalQuestions) < 50) {
            messageLabel.text = "You could do better"
        } else if (Double(numberOfCorrect * 100 / totalQuestions) < 70) {
            messageLabel.text = "Nice attempt!"
        } else {
            messageLabel.text = "Great job!"
        }
        
    }

    /******************************************************************************
     *** Method name  : updateValuesAttemptedCorrectIncorrect
     *** Description : This method will calculate review summary i.e.
     ***                number of questions attempted, correct and incorrect
     ******************************************************************************/
    func updateValuesAttemptedCorrectIncorrect(){
        numberOfNotAttempted = 0
        numberOfCorrect = 0
        numberOfIncorrect = 0
        
        totalQuestions = (decodedReviews?.reviews[currentReviewIndex].questions.count)!
        
        for i in 0...(totalQuestions - 1) {
            switch attemptedQuestions[i] {
            case attempted.NOT_ATTEMPTED:
                numberOfNotAttempted += 1
            case attempted.CORRECT:
                numberOfCorrect += 1
            case attempted.INCORRECT:
                numberOfIncorrect += 1
            }
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
