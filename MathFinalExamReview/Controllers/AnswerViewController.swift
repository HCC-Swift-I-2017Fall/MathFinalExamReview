//
//  AnswerViewController.swift
//  MathFinalExamReview
//
//  Created by Prakash Sachania on 12/5/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    // VARS
    var questionNumberOpt: Int?
    
    // OUTLETS
    @IBOutlet weak var headerQuestionNumber: UILabel!
    @IBOutlet weak var answerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayAnswerImage()
       
    }

    @IBAction func unwindToAnswer(unwindSegue: UIStoryboardSegue) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func displayAnswerImage(){
        headerQuestionNumber.text = "Here is the answer for question  \((currentQuestionIndex) + 1)"
        
        guard let aimage = decodedReviews?.reviews[currentReviewIndex].questions[currentQuestionIndex].aImgPath else{return}
        answerImage.image = UIImage(named: aimage)
        
    }

}
