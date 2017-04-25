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
    @IBOutlet weak var HistoryLabel: UILabel!
    
    var hist = ""
    var currentLabelYPosition : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        HistoryLabel.text = hist
        
        
        
        let newlabel = UILabel(frame: CGRect(x: HistoryScroll.frame.origin.x, y: currentLabelYPosition, width: 200, height: 21))
        //newlabel.center = CGPoint(x: 160, y: 285)
        newlabel.textAlignment = .center
        newlabel.text = "test label!"
        
        
        self.HistoryScroll.addSubview(newlabel)
        currentLabelYPosition += newlabel.frame.size.height
        
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
