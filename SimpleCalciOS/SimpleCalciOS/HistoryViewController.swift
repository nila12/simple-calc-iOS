//
//  HistoryViewController.swift
//  SimpleCalciOS
//
//  Created by Mathi Manavalan on 4/23/17.
//  Copyright © 2017 Mathi Manavalan. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    
    @IBOutlet weak var HistoryScroll: UIScrollView!
    //@IBOutlet weak var HistoryLabel: UILabel!
    
    //var hist = ""
    //var temp = ""
    public var histarr = [String]()
    
    //var currentLabelYPosition : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HistoryScroll.backgroundColor = UIColor.orange

        // Do any additional setup after loading the view.
        
        //HistoryLabel.text = hist
        
        let newlabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 25))
        newlabel.backgroundColor = UIColor.yellow
        //newlabel.center = CGPoint(x: 160, y: 285)
        
        newlabel.text = "History"
        newlabel.textAlignment = .center
        
        self.HistoryScroll.addSubview(newlabel)
        
        var nlY = 25
        
        for eq in histarr {
            //newlabel.text!.append(eq)
            let nl = UILabel(frame: CGRect(x: 0, y: nlY, width: 200, height: 25))
            nl.text = eq
            nl.textAlignment = .center
            
            self.HistoryScroll.addSubview(nl)
            nlY = nlY + 25
        }

        
        //currentLabelYPosition += newlabel.frame.size.height
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
