//
//  QuestionModel.swift
//  TrueFalseStarter
//
//  Created by Samuel Yanez on 9/5/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import GameKit

struct QuestionModel {
    
    let questions = [
        Question(interrogative: "This was the only US President to serve more than two consecutive terms.", answers: ["George Washington", "Franklin D. Roosevelt", "Woodrow Wilson", "Andrew Jackson"], correctAnswerIndex: 1),
        Question(interrogative: "Which of the following countries has the most residents?", answers: ["Nigeria", "Russia", "Iran", "Vietnam"], correctAnswerIndex: 0),
        Question(interrogative: "In what year was the United Nations founded?", answers: ["1918", "1919", "1945", "1954"], correctAnswerIndex: 2),
        Question(interrogative: "The Titanic departed from the United Kingdom, where was it supposed to arrive?", answers: ["Paris", "Washington D.C.", "New York City", "Boston"], correctAnswerIndex: 2),
        Question(interrogative: "Which nation produces the most oil?", answers: ["Iran", "Iraq", "Brazil", "Canada"], correctAnswerIndex: 3),
        Question(interrogative: "Which country has most recently won consecutive World Cups in Soccer?", answers: ["Italy", "Brazil", "Argetina", "Spain"], correctAnswerIndex: 1),
        Question(interrogative: "Which city is the oldest?", answers: ["Mexico City", "Cape Town", "San Juan", "Sydney"], correctAnswerIndex: 0),
        Question(interrogative: "Which country was the first to allow women to vote in national elections?", answers: ["Poland", "United States", "Sweden", "Senegal"], correctAnswerIndex: 0),
        Question(interrogative: "Which of the following rivers is longest?", answers: ["Yangtze", "Mississippi", "Congo", "Mekong"], correctAnswerIndex: 1),
        Question(interrogative: "Which of these countries won the most medals in the 2012 Summer Games?", answers: ["France", "Germany", "Japan", "Great Britian"], correctAnswerIndex: 3)
    ]
    
    var previouslyUsedNumbers: [Int] = []
    
    mutating func getRandomQuestion() -> Question {
        
        if (previouslyUsedNumbers.count == questions.count) {
            previouslyUsedNumbers = []
        }
        var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        
        // Picks a new random number if the previous one has been used
        while (previouslyUsedNumbers.contains(randomNumber)) {
            randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        }
        previouslyUsedNumbers.append(randomNumber)
        
        return questions[randomNumber]
    }
}

struct Question {
    
    fileprivate let interrogative: String
    fileprivate let answers: [String]
    fileprivate let correctAnswerIndex: Int
    
    func valiateAnswer(to givenAnswer: Int) -> Bool {
        return (givenAnswer == correctAnswerIndex)
    }
    
    func getInterrogative() -> String {
        return interrogative
    }
    
    func getAnswer() -> String {
        return answers[correctAnswerIndex]
    }
    
    func getAnswers() -> [String] {
        return answers
    }
    
    func getAnswerAt(index: Int) -> String {
        return answers[index]
    }
}
