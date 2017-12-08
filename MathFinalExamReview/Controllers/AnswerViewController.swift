//
//  AnswerViewController.swift
//  MathFinalExamReview
//
//  Created by Prakash Sachania on 12/5/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class AnswerViewController: UIViewController {
    let avPlayerViewController = AVPlayerViewController()
    var avPlayer: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Use following variable to display video...
        let videoLink = decodedReviews?.reviews[currentReviewIndex].questions[currentQuestionIndex].videoLink

        let movieUrl: NSURL? = NSURL(string: videoLink!)

        if let url = movieUrl {
            self.avPlayer = AVPlayer(url: url as URL)
            self.avPlayerViewController.player = self.avPlayer
        }
        
    }

    @IBAction func videoExplanation(_ sender: UIButton) {
        self.present(self.avPlayerViewController, animated: true){
            ()-> Void in self.avPlayerViewController.player?.play()
        }
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

}
