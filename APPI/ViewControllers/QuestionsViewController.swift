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
    
    // MARK: - Private properties
    var questionCatImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorImage.image = UIImage(named: questionCatImage ?? "color")

    }
    
}
