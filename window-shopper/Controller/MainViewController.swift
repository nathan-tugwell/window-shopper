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
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calcButton.backgroundColor = #colorLiteral(red: 0.04350364953, green: 0.7325239182, blue: 0.1820122302, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        hourlyWageTextField.inputAccessoryView = calcButton
        priceTextField.inputAccessoryView = calcButton
        
        resultsLabel.isHidden = true
        hoursLabel.isHidden = true
    }

    @objc func calculate() {
        if let wageText = hourlyWageTextField.text, let priceText = priceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultsLabel.isHidden = false
                hoursLabel.isHidden = false
                resultsLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultsLabel.isHidden = true
        hoursLabel.isHidden = true
        hourlyWageTextField.text = ""
        priceTextField.text = ""
    }
    
}

