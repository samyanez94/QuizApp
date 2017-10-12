//
//  QuizController.swift
//  QuizApp
//
//  Created by Samuel Yanez on 9/9/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class QuizController {
    
    var quizOver: Bool
    var numberOfQuestionsPerRound: Int
    
    init(numberOfQuestionsPerRound: Int) {
        quizOver = false
        self.numberOfQuestionsPerRound = numberOfQuestionsPerRound
    }
    
    func endQuiz() {
        quizOver = true
    }
    
    func startQuiz() {
        quizOver = false
    }
}
