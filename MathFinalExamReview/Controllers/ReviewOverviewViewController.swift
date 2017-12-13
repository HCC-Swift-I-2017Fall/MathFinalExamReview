//
//  ReviewOverviewViewController.swift
//  MathFinalExamReview
//
//  Created by Prakash Sachania on 12/5/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import UIKit

class ReviewOverviewViewController: UIViewController {

    @IBOutlet weak var startFinalReviewButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        convertJSONintoStruct()

        if (decodedReviews == nil) {
            currentReviewIndex = CC_NONE_SELECTED
            currentQuestionIndex = CC_NONE_SELECTED
        } else {
            currentReviewIndex = 0
            currentQuestionIndex = 0
        }
        
        
        let max_index = (decodedReviews?.reviews[currentReviewIndex].questions.count)!
        
        for i in 0...(max_index-1) {
            attemptedQuestions.append(attempted.NOT_ATTEMPTED)
        }

        
        
        //Format button's look and feel
        actionButtonFormatting(button: startFinalReviewButton)
        
        //*** Testing ....
        print(decodedReviews?.reviews[currentReviewIndex].questions[currentQuestionIndex].videoLink ?? "No data found! ERROR: ROC0100-Missing Data")
    }

    /******************************************************************************
     *** Method name  : convertJSONintoStruct
     *** Description : This method will convert data in JSON file into a Struct
     ***                that can be accessed in the app throughout
     ******************************************************************************/
    func convertJSONintoStruct() {
        let filePath = Bundle.main.path(forResource: "finalreview0312", ofType:"json")
        let jsonData = try! Data(contentsOf: URL(fileURLWithPath:filePath!), options: .uncached)

        guard let decoded = try? JSONDecoder().decode(MathFinalReview.self, from: jsonData) else {
            print("Could not convert JSON into Struct. Make sure .... \n1) JSON file has no extra or missing { or [ or ( \n2) JSON and 'MathFinalReview' Struct are matching. ERROR: MFR0100-JSON")
            return
        }
        
        decodedReviews = decoded        //story in the global variable
    }
    
    @IBAction func unwindToReviewOverview(unwindSegue: UIStoryboardSegue) {
        
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


/*
 // MARK: - Button Formatting
*/
/******************************************************************************
 *** Method name  : actionButtonFormatting
 *** Description : This method formats any UI button with ...
 ***               rounded corner, border color and shadow
 ******************************************************************************/
func actionButtonFormatting(button: UIButton) {
    button.layer.cornerRadius = 6
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.darkGray.cgColor
    //button.layer.backgroundColor = UIColor.blue.cgColor
    button.layer.backgroundColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0).cgColor
    button.setTitleColor(UIColor.white, for: .normal)
    
    button.layer.shadowColor = UIColor.darkGray.cgColor
    button.layer.shadowOffset = CGSize.init(width: 2, height: 2)
    button.layer.shadowRadius = 6
    button.layer.shadowOpacity = 0.7
}

