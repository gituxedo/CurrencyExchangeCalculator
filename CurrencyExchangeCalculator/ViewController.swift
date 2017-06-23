//
//  ViewController.swift
//  CurrencyExchangeCalculator
//
//  Created by apple on 6/21/17.
//  Copyright © 2017 Sylvia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var pesoTextField: UITextField!
    @IBAction func calculateButton(_ sender: UIButton) {
        if let dollarAmount = Double(dollarTextField.text!) {
            let convert:Double = 18.22
            let pesoAmount:Double = dollarAmount * convert
            pesoTextField.text = String(format: "%.2f", pesoAmount)
        }
        else {
            pesoTextField.text = ""
            dollarTextField.text = ""
        }
    }
}

