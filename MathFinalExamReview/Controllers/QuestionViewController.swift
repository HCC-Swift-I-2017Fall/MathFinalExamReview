//
//  QuestionViewController.swift
//  MathFinalExamReview
//
//  Created by Prakash Sachania on 12/5/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    //VARS
    var questionNumberOpt: Int?
    var totalQuestionsOpt: Int?
    

    // OUTLETS
    @IBOutlet weak var headerQuestionNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionNumberOpt = 1 // Set 1 just to test. Later: This var will receive a value from the previous controller through segue OR read from a data the number of the question the user has stopped. (use core data to persiste the data (?))
        totalQuestionsOpt = 10 //Set 10 only to test. It will count the number of questions from the Json
        
        guard let questionNumber = questionNumberOpt else {return}
        guard let totalQuestions = totalQuestionsOpt else {return}
        headerQuestionNumber.text = "Question " + String(questionNumber) + " of " + String(totalQuestions)
    }

    @IBAction func unwindToQuestion(unwindSegue: UIStoryboardSegue) {
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toAnswerSegue" {
            let avc = segue.destination as! AnswerViewController
            avc.questionNumberOpt = questionNumberOpt
        }
        
        
    }


}
