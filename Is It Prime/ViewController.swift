//
//  ViewController.swift
//  Is It Prime
//
//  Created by Isaac Granillo on 11/26/15.
//  Copyright © 2015 Isaac Granillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var numberTextField: UITextField!
    
    
    
    @IBOutlet var resultLabel: UILabel!
    
    
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let checknumber =  Int(numberTextField.text!) {
        
            var isPrime = true
        
            if checknumber == 1 || checknumber == 0 || checknumber < 0 {
                isPrime = false
            }
        
        
            if checknumber != 1 && checknumber != 2 {
            
                for (var p = 2; p < checknumber; p++){
                    if checknumber % p == 0 {
                        isPrime = false
                    }
                }
            }
        
            if isPrime {
                resultLabel.text = "\(checknumber) is prime"
            }
            else {
                resultLabel.text = "\(checknumber) is not prime"
            }
        
        }
        
        else {
            resultLabel.text = "Please enter a whole number"
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

