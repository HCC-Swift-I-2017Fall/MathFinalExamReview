//
//  VideoViewController.swift
//  MathFinalExamReview
//
//  Created by Prakash Sachania on 12/5/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //Use following variable to display video...
        let videoLink = decodedReviews?.reviews[currentReviewIndex].questions[currentQuestionIndex].videoLink
    }

    @IBAction func videoCompleted(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Answer2Video", sender: nil)
        
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
