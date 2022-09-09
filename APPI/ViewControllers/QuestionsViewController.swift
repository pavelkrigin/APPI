//
//  QuestionsViewController.swift
//  APPI
//
//  Created by Илья on 09.09.2022.
//

import UIKit

final class QuestionsViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var colorImage: UIImageView!
    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var hobbyImage: UIImageView!
    @IBOutlet var movieImage: UIImageView!
    
    @IBOutlet var colorQuestions: [UIButton]!
    @IBOutlet var foodQuestions: [UIButton]!
    @IBOutlet var hobbyQuestions: [UIButton]!
    @IBOutlet var movieQuestions: [UIButton]!
    
    // MARK: - Private properties
    var questionCatImage: String?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorImage.image = UIImage(named: questionCatImage ?? "color")
        foodImage.image = UIImage(named: questionCatImage ?? "food")
        hobbyImage.image = UIImage(named: questionCatImage ?? "hobby")
        movieImage.image = UIImage(named: questionCatImage ?? "movie")

    }
    
}
