//
//  ViewController.swift
//  project1
//
//  Created by Sidharth Nayyar on 2019-07-07.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberText: UITextField!
    @IBOutlet weak var secondNumberText: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    //    @IBOutlet weak var lblResult: UILabel!
  //  @IBOutlet weak var textFieldInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnAdd(_ sender: Any) {
        
        
        let num1 = Float(self.firstNumberText.text!)
        let num2 = Float(self.secondNumberText.text!)
        self.lblResult.text = String(num1! + num2!)
        print(lblResult)
                let SB = UIStoryboard(name: "Main", bundle: nil)
                let result = SB.instantiateViewController(withIdentifier: "MainResultScreen") as! ResultViewController
                result.actualResult = self.lblResult.text
                // result.lblMainResult.text = self.lblResult.text
                self.navigationController?.pushViewController(result, animated: true)
        

    }
    
    @IBAction func btnMultiplication(_ sender: UIButton) {
//        var a:Float
//        var b:Float
let num1 = Float(self.firstNumberText.text!)
let num2 = Float(self.secondNumberText.text!)
        self.lblResult.text = String(num1! * num2!)
        print(lblResult)
        let SB = UIStoryboard(name: "Main", bundle: nil)
        let result = SB.instantiateViewController(withIdentifier: "MainResultScreen") as! ResultViewController
        result.actualResult = self.lblResult.text
        self.navigationController?.pushViewController(result, animated: true)
        
    }
    
    @IBAction func btnDivision(_ sender: UIButton) {
    
        let num1 = Float(self.firstNumberText.text!)
        let num2 = Float(self.secondNumberText.text!)
        self.lblResult.text = String(num1! / num2!)
        print(lblResult)
        let SB = UIStoryboard(name: "Main", bundle: nil)
        let result = SB.instantiateViewController(withIdentifier: "MainResultScreen") as! ResultViewController
        result.actualResult = self.lblResult.text
        self.navigationController?.pushViewController(result, animated: true)
        
    }
    
    
    
    @IBAction func btnSubtraction(_ sender: UIButton) {
        let num1 = Float(self.firstNumberText.text!)
        let num2 = Float(self.secondNumberText.text!)
        self.lblResult.text = String(num1! - num2!)
        print(lblResult)
        let SB = UIStoryboard(name: "Main", bundle: nil)
        let result = SB.instantiateViewController(withIdentifier: "MainResultScreen") as! ResultViewController
        result.actualResult = self.lblResult.text
        self.navigationController?.pushViewController(result, animated: true)
    
    }
    
    
    //    @IBAction func showResultbtn(_ sender: Any) {
//        // suitable action we want to perform
//       // self.textFieldInput.text = self.lblResult.text
//        if let result = self.textFieldInput.text{
//            self.lblResult.text = self.textFieldInput.text
//        }
//
    }

