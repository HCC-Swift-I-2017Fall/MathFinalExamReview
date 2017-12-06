/******************************************************************************
 *** Data Model name  : MathFinalReviewDataModel
 *** Description : This file contains data model used for Math Final Review
 ***
 *** MathFinalReview Struct : This structure is highest level structure containing
 ***        all (array) final reviews e.g. Intermediate Algebra, Pre-Algebra etc
 ***
 *** Review Struct : This structure contains details of a given review. It has
 ***        propoerties like review name, title, id, array of question structure
 ***
 *** Question Struct : This structure contains details of a given question. It
 ***        has properties like question no, image path of question & answer and
 ***        link to the video on YouTube
 ******************************************************************************/

import Foundation

/******************************************************************************
 *** Struct name  : MathFinalReview
 *** Description : This structure is highest level structure containing
 ***        all (array) final reviews e.g. Intermediate Algebra, Pre-Algebra etc
 ***    It is Codable and used with JSON serialization
 ******************************************************************************/
public struct MathFinalReview: Codable {
    public var reviews : [Review]
}

/******************************************************************************
 *** Struct name  : Review
 *** Description : This structure contains details of a given review. It has
 ***        propoerties like review name, title, id, array of question structure
 ***    It is Codable and used with JSON serialization
 ******************************************************************************/
public struct Review: Codable {
    public var name: String
    public var title: String
    public var id: String
    public var questions : [Question]
}

/******************************************************************************
 *** Struct name  : Question
 *** Description : This structure contains details of a given question. It
 ***        has properties like question no, image path of question & answer and
 ***        link to the video on YouTube
 ***    It is Codable and used with JSON serialization
 ******************************************************************************/
public struct Question : Codable {
    public var qno: Int
    public var qImgPath: String
    public var aImgPath: String
    public var videoLink: String
}
