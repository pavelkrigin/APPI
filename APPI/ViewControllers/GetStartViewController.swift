//
//  GetStartViewController.swift
//  APPI
//
//  Created by Илья on 08.09.2022.
//

import UIKit

final class GetStartViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var getStartCatImage: UIImageView!
    
    // MARK: Private properties
    private var testCat: String?
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getStartCatImage.image = UIImage(named: testCat ?? "getStartCat")

    }
    
    // MARK: IBActions
    @IBAction func toStartPageSegue(_ segue: UIStoryboardSegue) {
    }
    
    
}
