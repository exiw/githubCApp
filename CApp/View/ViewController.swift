//
//  ViewController.swift
//  CApp
//
//  Created by Emre Konukpay on 5.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zilButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zilButton.setImage(UIImage(named: "zil4"), for: .normal)
        
    }


}

