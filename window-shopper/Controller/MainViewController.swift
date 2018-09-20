//
//  ViewController.swift
//  window-shopper
//
//  Created by Nathan Tugwell on 20/09/2018.
//  Copyright © 2018 petsathome. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var hourlyWageTextField: CustomTextField!
    @IBOutlet weak var priceTextField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calcButton.backgroundColor = #colorLiteral(red: 0.04350364953, green: 0.7325239182, blue: 0.1820122302, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        hourlyWageTextField.inputAccessoryView = calcButton
        priceTextField.inputAccessoryView = calcButton
    }

    @objc func calculate() {

    }

}

