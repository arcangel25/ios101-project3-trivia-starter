//
//  triviaQuestions.swift
//  Trivia
//
//  Created by Anna Arcangel on 3/12/25.
//

import Foundation
import UIKit

struct TriviaQuestion {
    let progress: String
    let question: QuestionCode
}

enum QuestionCode {
    case Q1
    case Q2
    case Q3
    case Q4
    
    var description: String {
        switch self {
        case .Q1:
            return "Finish the lyric: \"I could go and read your mind,\" "
        case .Q2:
            return "What melted item inspired the microwave?"
        case .Q3:
            return "Castor and Pollux make up which constellation?"
        case .Q4:
            return "What is the name of the north star?"
        }
    }
    
    var A1: String {
        switch self {
        case .Q1:
            return "But what's in there is a crime"
        case .Q2:
            return "Butter"
        case .Q3:
            return "Gemini"
        case .Q4:
            return "Arcturus"
        }
    }
    
    var A2: String {
        switch self {
        case .Q1:
            return "Think about your dumb face all the time"
        case .Q2:
            return "Cheese"
        case .Q3:
            return "The Big Dipper"
        case .Q4:
            return "Sirius"
        }
    }
    var A3: String {
        switch self {
        case .Q1:
            return "Betcha still feeling fine"
        case .Q2:
            return "Chocolate"
        case .Q3:
            return "Orion"
        case .Q4:
            return "Capella"
        }
    }
    var A4: String {
        switch self {
        case .Q1:
            return "But you'd never even try to guess mine"
        case .Q2:
            return "Gummy bear"
        case .Q3:
            return "Cassiopeia"
        case .Q4:
            return "Polarius"
        }
    }
}
