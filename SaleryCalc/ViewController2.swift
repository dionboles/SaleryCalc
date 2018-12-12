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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func AnnualBtn(_ sender: UIButton) {
        let hourPay = Double(txtPay.text!)
        annualLable.text = String(AnnualBackToHour(yearPay: hourPay!))
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func AnnualBackToHour( yearPay:Double) -> Double{
        let hoursWorked:Double = 8.00
        let daysInNumberWorkWeek:Double = 5.00
        let weeksInAYear:Double = 52.00
        let answer = yearPay / weeksInAYear / daysInNumberWorkWeek / hoursWorked
        return answer
    }
}
