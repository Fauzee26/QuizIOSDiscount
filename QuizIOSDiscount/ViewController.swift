//
//  ViewController.swift
//  QuizIOSDiscount
//
//  Created by Muhammad Hilmy Fauzi on 1/23/18.
//  Copyright © 2018 Hilmy Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etSum: UITextField!
    @IBOutlet weak var etPrice: UITextField!
    @IBOutlet weak var lblBefAf: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnBuy(_ sender: Any) {
        let sum : Int? = Int(etSum.text!)!
        let price : Int? = Int(etPrice.text!)!
        let Bayar : Int = sum! * price!
        let diskon : Int = Bayar / 2
        
        if (sum! > 10) {
            lblBefAf.text = "Your payment before discount is Rp.\(Bayar), but you got discount 50% so you have to pay Rp.\(diskon)"
        }else if (sum! <= 10) {
            lblBefAf.text = "You didn't get discount, so you must pay Rp.\(Bayar)"
        }


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

