//
//  QuestionsViewController.swift
//  APPI
//
//  Created by Илья on 08.09.2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    @IBOutlet var catImage: UIImageView!
    
    var firstQuestionCatImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        catImage.image = UIImage(named: firstQuestionCatImage ?? "palette")
        
    }
}
