//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Felipe Almeida on 30/06/2022.
//  Copyright © 2022 Curso iOS. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        let score = totalCorrectAnswers*100/totalAnswers
        lbScore.text = "\(score)%"
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
