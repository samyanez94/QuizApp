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
        Question(interrogative: "Only female koalas can whistle", answer: false),
        Question(interrogative: "Blue whales are technically whales", answer: true),
        Question(interrogative: "Camels are cannibalistic", answer: false),
        Question(interrogative: "All ducks are birds", answer: true),
    ]
    
    func getRandomQuestion() -> Question {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        return questions[randomNumber]
    }
}

struct Question {
    
    fileprivate let interrogative: String
    fileprivate let answer: Bool
    
    func valiateAnswer(to givenAnswer: Bool) -> Bool {
        return (givenAnswer == answer)
    }
    
    func getInterrogative() -> String {
        return interrogative
    }
    
    func getAnswer() -> Bool {
        return answer
    }
    
}
