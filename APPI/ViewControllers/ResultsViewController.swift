//
//  ResultsViewController.swift
//  APPI
//
//  Created by Илья on 08.09.2022.
//

import UIKit

final class ResultsViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var resultTestImage: UIImageView!
    
    // MARK: Private properties
    private var resultCatImage: String?
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultTestImage.image = UIImage(named: resultCatImage ?? "franceCat")
    }
}
