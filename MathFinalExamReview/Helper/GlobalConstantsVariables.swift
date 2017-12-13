//
//  GlobalConstantsVariables.swift
//  MathFinalExamReview
//
//  Created by Prakash Sachania on 11/30/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import Foundation

/****************************************
 *** Global Constants and Global Variables
 ***
 ***
 ****************************************/


let CC_NONE_SELECTED = -1

var currentReviewIndex : Int = CC_NONE_SELECTED //Points to current review. -1 means none is current

var currentQuestionIndex : Int = CC_NONE_SELECTED //Points to current question number in the review. -1 means none is current

var decodedReviews : MathFinalReview?

var attemptedQuestions: [attempted] = []

enum attempted {
    case NOT_ATTEMPTED
    case CORRECT
    case INCORRECT
}


var numberOfNotAttempted: Int = 0
var numberOfCorrect: Int = 0
var numberOfIncorrect: Int = 0

func updateValuesAttemptedCorrectIncorrect(){
    numberOfNotAttempted = 0
    numberOfCorrect = 0
    numberOfIncorrect = 0
    
    let max_index = (decodedReviews?.reviews[currentReviewIndex].questions.count)!
    
    for i in 0...(max_index-1) {
        switch attemptedQuestions[i] {
        case attempted.NOT_ATTEMPTED: numberOfNotAttempted += 1
        case attempted.CORRECT: numberOfCorrect += 1
        case attempted.INCORRECT: numberOfIncorrect += 1
            
        }
    }
    
}

