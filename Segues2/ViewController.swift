//
//  ViewController.swift
//  Segues2
//
//  Created by Eric Stein on 4/26/19.
//  Copyright © 2019 Eric Stein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen"{
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver = textField.text!
        }
    }
}

