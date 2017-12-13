//
//  ViewController.swift
//  window-shopper
//
//  Created by Greg Smorag on 11/12/2017.
//  Copyright © 2017 Greg Smorag. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var calculatedValueLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        calculatedValueLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        if let actualWageTxt = wageTxt.text, let actualPriceTxt = priceTxt.text {
            if let wage = Double(actualWageTxt), let price = Double(actualPriceTxt)
            {
                view.endEditing(true)
                calculatedValueLbl.isHidden = false
                hoursLbl.isHidden = false
                calculatedValueLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func clearCalculatorBtnTapped(_ sender: Any) {
        calculatedValueLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

