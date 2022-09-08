//
//  QuestionsViewController.swift
//  APPI
//
//  Created by Илья on 08.09.2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    @IBOutlet var paletteImage: UIImageView!
    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var hobbyImage: UIImageView!
    @IBOutlet var movieImage: UIImageView!
    
    private let questions = Question.getQuestions()
    
    var firstQuestionCatImage: String?
    var secondQuestionCatImage: String?
    var thirdQuestionCatImage: String?
    var fourtQuestionCatImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        paletteImage.image = UIImage(named: firstQuestionCatImage ?? "palette")
        foodImage.image = UIImage(named: secondQuestionCatImage ?? "food")
        hobbyImage.image = UIImage(named: thirdQuestionCatImage ?? "hobby")
        movieImage.image = UIImage(named: fourtQuestionCatImage ?? "movie")
        
    }
}
