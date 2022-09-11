//
//  QuestionsViewController.swift
//  APPI
//
//  Created by Илья on 09.09.2022.
//

import UIKit

final class QuestionsViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var colorStackView: UIStackView!
    @IBOutlet var colorQuestion: UILabel!
    @IBOutlet var colorImage: UIImageView!
    @IBOutlet var colorAnswers: [UIButton]!
    
    @IBOutlet var foodStackView: UIStackView!
    @IBOutlet var foodQuestion: UILabel!
    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var foodAnswers: [UIButton]!
    
    @IBOutlet var hobbyStackView: UIStackView!
    @IBOutlet var hobbyQuestion: UILabel!
    @IBOutlet var hobbyImage: UIImageView!
    @IBOutlet var hobbyAnswers: [UIButton]!
    
    @IBOutlet var movieStackView: UIStackView!
    @IBOutlet var movieQuestion: UILabel!
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var movieAnswers: [UIButton]!
    
    // MARK: - Properties
    private let questions = Question.getQuestions()
    private var answerSelected: [Answer] = []
    private var questionIndex = 0
    
    private var currentQuestion: String {
        questions[questionIndex].title
    }
        
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }

    private var questionImage: String?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorImage.image = UIImage(named: questionImage ?? "color")
        foodImage.image = UIImage(named: questionImage ?? "food")
        hobbyImage.image = UIImage(named: questionImage ?? "hobby")
        movieImage.image = UIImage(named: questionImage ?? "movie")
        
        updateUserInterface()
    }
    
    // MARK: - IBActions
    @IBAction func colorAnswerButtonPressed(_ sender: UIButton) {
        guard let currentIndex = colorAnswers.firstIndex(of: sender) else { return }
        
        let currentAnswer = currentAnswers[currentIndex]
        answerSelected.append(currentAnswer)
        
        getNextQuestion()
    }
    
    @IBAction func foodAnswerButtonPressed(_ sender: UIButton) {
        guard let currentIndex = foodAnswers.firstIndex(of: sender) else { return }
        
        let currentAnswer = currentAnswers[currentIndex]
        answerSelected.append(currentAnswer)
        
        getNextQuestion()
    }
    
    @IBAction func hobbyAnswerButtonPressed(_ sender: UIButton) {
        guard let currentIndex = hobbyAnswers.firstIndex(of: sender) else { return }
        
        let currentAnswer = currentAnswers[currentIndex]
        answerSelected.append(currentAnswer)
        
        getNextQuestion()
    }
    
    @IBAction func movieAnswerButtonPressed(_ sender: UIButton) {
        guard let currentIndex = movieAnswers.firstIndex(of: sender) else { return }
        
        let currentAnswer = currentAnswers[currentIndex]
        answerSelected.append(currentAnswer)
        
        getNextQuestion()
    }
}

    // MARK: - Extantions
    extension QuestionsViewController {
        
        private func updateUserInterface() {
            let stackViews = [colorStackView, foodStackView, hobbyStackView, movieStackView]
            
            for stackView in stackViews {
                stackView?.isHidden = true
            }
            
            showCurrentAnswers(index: questionIndex)
        }
        
        private func showCurrentAnswers(index: Int) {
            switch index {
            case 0:
                showColorQuestionStackView(stackView: colorStackView, question: currentQuestion, answers: currentAnswers, image: colorImage)
            case 1:
                showFoodQuestionStackView(question: currentQuestion, answers: currentAnswers, image:         foodImage)
            case 2:
                showHobbyQuestionStackView(question: currentQuestion, answers: currentAnswers, image: hobbyImage)
            default:
                showMovieQuestionStackView(question: currentQuestion, answers: currentAnswers, image: movieImage)
            }
        }
        
        private func showColorQuestionStackView(stackView: UIStackView, question: String, answers: [Answer], image: UIImageView) {
            stackView.isHidden = false
            
            colorQuestion.text = currentQuestion
            
            for (button, answer) in zip(colorAnswers, answers) {
                button.setTitle(answer.title, for: .normal)
            }
        }
        
        private func showFoodQuestionStackView(question: String, answers: [Answer], image: UIImageView) {
            foodStackView.isHidden = false
            
            foodQuestion.text = currentQuestion
            
            for (button, answer) in zip(foodAnswers, answers) {
                button.setTitle(answer.title, for: .normal)
            }
        }
        
        private func showHobbyQuestionStackView(question: String, answers: [Answer], image: UIImageView) {
            hobbyStackView.isHidden = false
            
            hobbyQuestion.text = currentQuestion
            
            for (button, answer) in zip(hobbyAnswers, answers) {
                button.setTitle(answer.title, for: .normal)
            }
        }
        
        private func showMovieQuestionStackView(question: String, answers: [Answer], image: UIImageView) {
            movieStackView.isHidden = false
            
            movieQuestion.text = currentQuestion
            
            for (button, answer) in zip(movieAnswers, answers) {
                button.setTitle(answer.title, for: .normal)
            }
        }
        
        private func getNextQuestion() {
            questionIndex += 1
            
            if questionIndex < questions.count {
                updateUserInterface()
                return
            } else {
                performSegue(withIdentifier: "toResultPage", sender: nil)
            }
        }
    }
