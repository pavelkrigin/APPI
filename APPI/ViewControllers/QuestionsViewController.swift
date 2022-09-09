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
    private var questionIndex = 0
    
    private var questionCatImage: String?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorImage.image = UIImage(named: questionCatImage ?? "color")
        foodImage.image = UIImage(named: questionCatImage ?? "food")
        hobbyImage.image = UIImage(named: questionCatImage ?? "hobby")
        movieImage.image = UIImage(named: questionCatImage ?? "movie")
        
        updateUserInterface()
    }
    
    // MARK: - IBActions
    @IBAction func colorAnswerButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func foodAnswerButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func hobbyAnswerButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func movieAnswerButtonPressed(_ sender: UIButton) {
    }
}

    // MARK: - Extantions
    extension QuestionsViewController {
        private func updateUserInterface() {
            let stackViews = [colorStackView, foodStackView, hobbyStackView, movieStackView]
            
            for stackView in stackViews {
                stackView?.isHidden = true
            }
        }
    }
