//
//  ResultsViewController.swift
//  APPI
//
//  Created by Илья on 08.09.2022.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet var resultTestImage: UIImageView!
    
    var resultCatImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultTestImage.image = UIImage(named: resultCatImage ?? "franceCat")
    }
}
