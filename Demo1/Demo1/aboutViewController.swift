//
//  aboutViewController.swift
//  Demo1
//
//  Created by Tristan Anderson on 9/17/17.
//  Copyright © 2017 trianderson. All rights reserved.
//

import UIKit

class aboutViewController: UIViewController {
    @IBAction func alertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Greeting", message: "Simple alert made by Tristan.", preferredStyle: UIAlertControllerStyle.alert)
        
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
