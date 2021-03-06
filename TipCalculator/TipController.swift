//
//  TipController.swift
//  TipCalculator
//
//  Created by Jean Lucas Monte Carvalho on 3/1/16.
//  Copyright © 2016 Jean Lucas Monte Carvalho. All rights reserved.
//

import UIKit
class TipViewController: UIViewController {
    var percentage :NSNumber = 15
    let defaults = NSUserDefaults.standardUserDefaults()
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func textFieldChanged(textField: UITextField){
        
        if(defaults.stringForKey("percentage")?.isEmpty == false){
        percentage = numberFormatter.numberFromString(defaults.stringForKey("percentage")!)!
        }
        if let text = textField.text ,number = numberFormatter.numberFromString(text){
            tipValue = number.doubleValue * (percentage.doubleValue/100)
        }
        else{
            tipLabel.text = nil
        }
    }
    
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    var tipValue: Double? {
        didSet {
            updateTipLabel()
        }
    }
    
    func updateTipLabel(){
        if let value = tipValue {
            //celsiusLabel.text = "\(value)"
            tipLabel.text = numberFormatter.stringFromNumber(value)
        }
        else{
            tipLabel.text = "???"
        }
    }
    @IBAction func dismissKeyboard(sender: AnyObject){
        textField.resignFirstResponder()
    }
    

}
