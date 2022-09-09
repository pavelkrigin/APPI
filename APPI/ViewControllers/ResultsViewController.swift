//
//  ResultsViewController.swift
//  APPI
//
//  Created by Илья on 09.09.2022.
//

import UIKit

final class ResultsViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var resultsImageView: UIImageView!
    
    // MARK: - Properties
    var resultImage: String?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

//        resultsImageView.image = UIImage(named: resultImage ?? "frenchCat")
    }

}
