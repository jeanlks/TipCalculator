//
//  SettingsController.swift
//  TipCalculator
//
//  Created by Jean Lucas Monte Carvalho on 3/2/16.
//  Copyright © 2016 Jean Lucas Monte Carvalho. All rights reserved.
//

import UIKit
class SettingsController: UIViewController{
    
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var textFieldPercentage: UITextField!
    
    @IBAction func savePercentage(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(textFieldPercentage.text, forKey: "percentage")  
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject){
        textFieldPercentage.resignFirstResponder()
    }
    
}