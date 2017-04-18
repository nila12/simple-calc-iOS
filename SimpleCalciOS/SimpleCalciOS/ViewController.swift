//
//  ViewController.swift
//  SimpleCalciOS
//
//  Created by Mathi Manavalan on 4/17/17.
//  Copyright © 2017 Mathi Manavalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    //@IBOutlet weak var Zero: UIButton!
    // when do i need this type of reference???
    
    @IBOutlet weak var DisplayArea: UILabel!
    
    public var text = ""

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
    }
    
}

