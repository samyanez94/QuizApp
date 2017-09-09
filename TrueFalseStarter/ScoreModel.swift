//
//  ScoreModel.swift
//  TrueFalseStarter
//
//  Created by Samuel Yanez on 9/5/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class Score {
    
    fileprivate var questionsAsked: Int = 0
    fileprivate var correctAnswers: Int = 0
    fileprivate var incorrectAnswers: Int = 0

    func incrementCorrectAnswers() {
        correctAnswers += 1
    }
    
    func incrementIncorrectAnswers() {
        incorrectAnswers += 1
    }
    
    func getScore() -> String {
        return "Way to go!\nYou got \(correctAnswers) out of \(questionsAsked) correct!"
    }
    
}
