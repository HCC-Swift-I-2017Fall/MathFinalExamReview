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
    //var questionNumberOpt: Int?
    var totalQuestionsOpt: Int?
    
    let questionNumber = decodedReviews?.reviews[currentReviewIndex].questions[currentQuestionIndex].qno

    // OUTLETS
    @IBOutlet weak var headerQuestionNumber: UILabel!
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var showAnswer: UIButton!
    @IBOutlet weak var endButton: UIButton!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBOutlet weak var previousQuestion: UIButton!
    
    
    
    
    // Actions
    @IBAction func nextQuestionButton(_ sender: UIButton) {
        if currentQuestionIndex < ((decodedReviews?.reviews[currentReviewIndex].questions.count)! - 1){
            currentQuestionIndex += 1
            displayQuestionImage()
        }
    }
    
    @IBAction func previousQuestionButton(_ sender: UIButton) {
        if currentQuestionIndex > 0 {
            currentQuestionIndex -= 1
            displayQuestionImage()
        }
    }
    
    @IBAction func endReview(_ sender: UIButton) {
        performSegue(withIdentifier: "segueFinishReview", sender: self)

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Format button's look and feel
        actionButtonFormatting(button: showAnswer)
        actionButtonFormatting(button: endButton)
        
        displayQuestionImage()
        
    }

    @IBAction func unwindToQuestion(unwindSegue: UIStoryboardSegue) {
        
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    }
    
    func displayQuestionImage(){
        headerQuestionNumber.text = "Question \((currentQuestionIndex) + 1) of \(decodedReviews?.reviews[currentReviewIndex].questions.count ?? 0)"
        
        guard let qimage = decodedReviews?.reviews[currentReviewIndex].questions[currentQuestionIndex].qImgPath else{return}
        questionImage.image = UIImage(named: qimage)

        if currentQuestionIndex == 0 {
            previousQuestion.isHidden = true
        } else {
            previousQuestion.isHidden = false
        }
        
        if currentQuestionIndex == ((decodedReviews?.reviews[currentReviewIndex].questions.count)! - 1) {
            nextQuestion.isHidden = true
        } else {
            nextQuestion.isHidden = false
        }
    }


}
