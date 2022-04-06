//
//  CaltureViewController.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/3/24.
//

import UIKit

class CaltureViewController: UIViewController {

    
    
    @IBOutlet var clicksLabel: UILabel!
    var numberOfClicks = 0;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonClicks(_ sender: Any) {
        //run when button press
        numberOfClicks = numberOfClicks + 1;
        //update the label
        clicksLabel.text = String(numberOfClicks) + "  Likes";
    }
   


}
