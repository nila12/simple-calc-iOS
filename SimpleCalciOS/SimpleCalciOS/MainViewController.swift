//
//  ViewController.swift
//  SimpleCalciOS
//
//  Created by Mathi Manavalan on 4/17/17.
//  Copyright © 2017 Mathi Manavalan. All rights reserved.
//

// EXTRA CREDIT: Supports decimal operations

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var DisplayArea: UILabel!
    public var text = ""
    
    public var equalsText = ""
    
    public var mainhistarr: [String] = ["\n"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: Actions
    @IBAction func zeroPressed(_ sender: UIButton) {
        text += "0"
        DisplayArea.text = text
    }

    @IBAction func onePressed(_ sender: Any) {
        text += "1"
        DisplayArea.text = text
    }
    
    @IBAction func twoPressed(_ sender: UIButton) {
        text += "2"
        DisplayArea.text = text
    }
    
    @IBAction func threePressed(_ sender: UIButton) {
        text += "3"
        DisplayArea.text = text
    }
    
    @IBAction func fourPressed(_ sender: UIButton) {
        text += "4"
        DisplayArea.text = text
    }
    
    @IBAction func fivePressed(_ sender: UIButton) {
        text += "5"
        DisplayArea.text = text
    }
    
    @IBAction func sixPressed(_ sender: UIButton) {
        text += "6"
        DisplayArea.text = text
    }
    
    @IBAction func sevenPressed(_ sender: UIButton) {
        text += "7"
        DisplayArea.text = text
    }
    
    @IBAction func eightPressed(_ sender: UIButton) {
        text += "8"
        DisplayArea.text = text
    }
    
    @IBAction func ninePressed(_ sender: UIButton) {
        text += "9"
        DisplayArea.text = text
    }
    
    @IBAction func decimalPressed(_ sender: UIButton) {
        text += "."
        DisplayArea.text = text
    }
    
    @IBAction func modPressed(_ sender: UIButton) {
        text += " % "
        DisplayArea.text = text
    }
    
    @IBAction func plusPressed(_ sender: UIButton) {
        text += " + "
        DisplayArea.text = text
    }
    
    @IBAction func minusPressed(_ sender: UIButton) {
        text += " - "
        DisplayArea.text = text
    }
    
    @IBAction func starPressed(_ sender: UIButton) {
        text += " * "
        DisplayArea.text = text
    }
    
    @IBAction func dividePressed(_ sender: UIButton) {
        text += " / "
        DisplayArea.text = text
    }
    
    @IBAction func factPressed(_ sender: UIButton) {
        text += " fact "
        DisplayArea.text = text
    }
    
    @IBAction func avgPressed(_ sender: UIButton) {
        text += " avg "
        DisplayArea.text = text
    }
    
    @IBAction func countPressed(_ sender: UIButton) {
        text += " count "
        DisplayArea.text = text
    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
        // display solution to user input
        
        var inputsArr : Array = text.components(separatedBy: " ")
        
        equalsText = text + " = "
        
        let first = Double(inputsArr[0])
        let oper = String(inputsArr[1])!
        let sec = Double(inputsArr[2])
        
        switch oper {
            case "+":
                text = String(first! + sec!)
                DisplayArea.text = text
                equalsText += text
            
            case "-":
                text = String(first! - sec!)
                DisplayArea.text = text
                equalsText += text
            
            case "/":
                text = String(first! / sec!)
                DisplayArea.text = text
                equalsText += text
            
            case "*":
                text = String(first! * sec!)
                DisplayArea.text = text
                equalsText += text
            
            case "mod":
                text = "\(first!.truncatingRemainder(dividingBy: sec!))"
                DisplayArea.text = text
                equalsText += text
            
            case "count":
                inputsArr = text.components(separatedBy: " count ")
                text = "\(inputsArr.count)"
                DisplayArea.text = text
                equalsText += text
            
            case "avg":
                inputsArr = text.components(separatedBy: " avg ")
                
                var sum = 0.0
            
                for num in inputsArr {
                    sum += Double(num)!
                }
            
                text = "\(sum / Double(inputsArr.count))"
                DisplayArea.text = text
                equalsText += text
            
            case "fact":
                var sum = 1
        
                for index in 2...Int(inputsArr[0])! {
                    sum *= index
                }
        
                text = "\(sum)"
                DisplayArea.text = text
                equalsText += text
        
            
            default:
                text = "Invalid operation inputted"
                DisplayArea.text = text
        }
        
        mainhistarr.append(equalsText)
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        
        text = ""
        DisplayArea.text = "Cleared"
    }
    
    @IBAction func historyPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "go", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let histVC = segue.destination as! HistoryViewController
        
        histVC.histarr.append(contentsOf: mainhistarr)
        
    }
    
}

