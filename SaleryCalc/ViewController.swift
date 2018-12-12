//
//  ViewController.swift
//  SaleryCalc
//
//  Created by Dion Boles on 12/10/18.
//  Copyright © 2018 Dion Boles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var PayText: UITextField!
    
    @IBOutlet weak var salaryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//    31200 / 52 /5 /8
//    15*8*5*52
    @IBAction func GrossAnnual(_ sender: UIButton) {
        let hourPay = Double(PayText.text!)
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        salaryLabel.text = numberFormatter.string(from: NSNumber(value:GrossAnnual(hrPay:hourPay!)))
    }
    
    func GrossAnnual( hrPay:Double) -> Double{
        let hoursWorked:Double = 8.00
        let daysInNumberWorkWeek:Double = 5.00
        let weeksInAYear:Double = 52.00
        let answer = hrPay * hoursWorked * daysInNumberWorkWeek * weeksInAYear;
        return answer
    }
  
    
    
}

