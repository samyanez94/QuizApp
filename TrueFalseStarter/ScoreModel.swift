//
//  ScoreModel.swift
//  TrueFalseStarter
//
//  Created by Samuel Yanez on 9/5/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class Score {
    
    fileprivate var points: Int = 0
    
    func add(points: Int) {
        self.points += points
    }
    
    func getPoints() -> Int {
        return points
    }
    
}
