//
//  GetStartViewController.swift
//  APPI
//
//  Created by Илья on 08.09.2022.
//

import UIKit

class GetStartViewController: UIViewController {
    @IBOutlet var getStartCatImage: UIImageView!
    
    var testCat: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getStartCatImage.image = UIImage(named: testCat ?? "getStartCat")

    }
    
    @IBAction func toStartPageSegue(_ segue: UIStoryboardSegue) {
    }
    
    
}
