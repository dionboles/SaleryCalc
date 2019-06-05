//
//  ViewController2.swift
//  SaleryCalc
//
//  Created by Dion Boles on 12/12/18.
//  Copyright © 2018 Dion Boles. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var annualLable: UILabel!
    @IBOutlet weak var txtPay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
		let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
		tap.cancelsTouchesInView = false
		self.view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func AnnualBtn(_ sender: UIButton) {
		let hourPay = Double(txtPay.text!)
		let numberFormatter = NumberFormatter()
		
		numberFormatter.numberStyle = NumberFormatter.Style.currency
		numberFormatter.maximumFractionDigits = 2
		
		
		
		if (hourPay != nil){
			
			annualLable.text = "$" +  String(describing: numberFormatter.string(from: NSNumber(value:AnnualBackToHour(yearPay:ceil(hourPay!))))!)
		}else{
			let alert = UIAlertController(title: "Please Enter a Number", message: "", preferredStyle: .alert)
			alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
			self.present(alert, animated: true, completion: nil)
			annualLable.text = "Enter Your Salary Pay Below"
		}
	}
    
    func AnnualBackToHour( yearPay:Double) -> Double{
        let hoursWorked:Double = 8.00
        let daysInNumberWorkWeek:Double = 5.00
        let weeksInAYear:Double = 52.00
        let answer = yearPay / weeksInAYear / daysInNumberWorkWeek / hoursWorked
        return answer
    }
}
