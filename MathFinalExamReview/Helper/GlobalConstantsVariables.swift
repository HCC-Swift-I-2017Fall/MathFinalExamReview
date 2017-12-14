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


