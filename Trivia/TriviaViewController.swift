//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Anna Arcangel on 3/12/25.
//

import UIKit

class TriviaViewController: UIViewController {
    
    @IBAction func a1(_ sender: UIButton) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1) // don't go higher than the number of questions
        configure(with: questions[selectedQuestionIndex])
    }
    @IBAction func a2(_ sender: UIButton) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1) // don't go higher than the number of questions
        configure(with: questions[selectedQuestionIndex])
    }
    @IBAction func a3(_ sender: UIButton) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1) // don't go higher than the number of questions
        configure(with: questions[selectedQuestionIndex])
    }
    @IBAction func a4(_ sender: UIButton) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1) // don't go higher than the number of questions
        configure(with: questions[selectedQuestionIndex])
    }
    @IBOutlet weak var a4Label: UIButton!
    @IBOutlet weak var a3Label: UIButton!
    @IBOutlet weak var a2Label: UIButton!
    @IBOutlet weak var a1Label: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    private var questions = [TriviaQuestion]()
    private var selectedQuestionIndex = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = createQuestions()
        configure(with: questions[selectedQuestionIndex])
    }
    // Returns an array of fake WeatherForecast data models to show
    private func createQuestions() -> [TriviaQuestion] {
        let question1 = TriviaQuestion(progress: "Question 1/4", question: .Q1)
        let question2 = TriviaQuestion(progress: "Question 2/4", question: .Q2)
        let question3 = TriviaQuestion(progress: "Question 3/4", question: .Q3)
        let question4 = TriviaQuestion(progress: "Question 4/4", question: .Q4)
        return [question1, question2, question3, question4]
        }
    private func configure(with trivia: TriviaQuestion) {
        questionLabel.text = trivia.question.description
        progressLabel.text = trivia.progress
        a1Label.setTitle(trivia.question.A1, for: .normal)
        a2Label.setTitle(trivia.question.A2, for: .normal)
        a3Label.setTitle(trivia.question.A3, for: .normal)
        a4Label.setTitle(trivia.question.A4, for: .normal)
      }
}
