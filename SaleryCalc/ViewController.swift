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
    
	@IBOutlet var hourBtn: UIButton!
	@IBOutlet weak var salaryLabel: UILabel!
    override func viewDidLoad() {
		hourBtn.layer.cornerRadius = 5
		hourBtn.layer.borderWidth = 1
		hourBtn.layer.borderColor = nil
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//    31200 / 52 /5 /8
//    15*8*5*52
    @IBAction func GrossAnnual(_ sender: UIButton) {
        let hourPay = Double(PayText.text!)
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
		
		if (hourPay != nil){
			salaryLabel.text = "$" + String(describing: numberFormatter.string(from: NSNumber(value:GrossAnnual(hrPay:hourPay!)))!)
		}else{
			let alert = UIAlertController(title: "Please Enter a Number", message: "", preferredStyle: .alert)
			alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
			self.present(alert, animated: true, completion: nil)
			salaryLabel.text = "Enter Your Hourly Pay Below"
		}
    }
    
    func GrossAnnual( hrPay:Double) -> Double{
        let hoursWorked:Double = 8.00
        let daysInNumberWorkWeek:Double = 5.00
        let weeksInAYear:Double = 52.00
        let answer = hrPay * hoursWorked * daysInNumberWorkWeek * weeksInAYear;
        return answer
    }
  
    
    
}

