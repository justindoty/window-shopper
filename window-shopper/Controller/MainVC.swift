//
//  ViewController.swift
//  window-shopper
//
//  Created by Justin  Doty on 9/23/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    
    @IBOutlet weak var hoursLabel: UILabel!
    
    @IBOutlet weak var hoursTxt: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.951398366, green: 0.6260453965, blue: 0.1305310944, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hoursLabel.isHidden = true
        hoursTxt.isHidden = true
        
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                hoursLabel.isHidden = false
                hoursTxt.isHidden = false
                hoursLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
            }
        }
        
        
    }
    
    
    @IBAction func clearCalcPressed(_ sender: Any) {
        hoursLabel.isHidden = true
        hoursTxt.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
    


}

