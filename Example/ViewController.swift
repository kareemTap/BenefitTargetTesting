//
//  ViewController.swift
//  Example
//
//  Created by Kareem Ahmed on 9/9/20.
//  Copyright © 2020 Kareem Ahmed. All rights reserved.
//

import UIKit
import BenefitTargetTesting

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func moveToPayAction(_ sender: Any) {
        let destVC = PayViewController()
        self.navigationController?.pushViewController(destVC, animated: true)
    }
    
}

