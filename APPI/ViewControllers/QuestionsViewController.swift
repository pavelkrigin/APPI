//
//  QuestionsViewController.swift
//  APPI
//
//  Created by Илья on 08.09.2022.
//

import UIKit

final class QuestionsViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var paletteImage: UIImageView!
    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var hobbyImage: UIImageView!
    @IBOutlet var movieImage: UIImageView!
    
    @IBOutlet var colorButtons: [UIButton]!
    @IBOutlet var foodButtons: [UIButton]!
    @IBOutlet var hobbyButton: [UIButton]!
    @IBOutlet var movieButton: [UIButton]!
    
    // MARK: Private properties
    private let questions = Question.getQuestions()
    private var questionCatImage: String?
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        paletteImage.image = UIImage(named: questionCatImage ?? "palette")
        foodImage.image = UIImage(named: questionCatImage ?? "food")
        hobbyImage.image = UIImage(named: questionCatImage ?? "hobby")
        movieImage.image = UIImage(named: questionCatImage ?? "movie")
        
    }
}
