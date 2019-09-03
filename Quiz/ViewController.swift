// PROGRAMMER:  Fernando Serrano
// PANTHERID:   5642858
// CLASS:       COP 4655 01 Online
// INSTRUCTOR:  Steve Luis ECS 282
// ASSIGNMENT:  Programming assignment 1
// DUE:         Thursday 09/04/19

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var countQuestions: UILabel!
    @IBOutlet var countAnswers: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var queCount: Int = 0
    var ansCount: Int = 0
    var currentQuestionIndex: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        queCount += 1
        countQuestions.text = String(queCount)
    }
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        queCount += 1
        countQuestions.text = String(queCount)
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        ansCount += 1
        countAnswers.text = String(ansCount)
    }
}

