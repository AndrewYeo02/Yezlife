//
//  ThirdViewController.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/2/9.
//

import UIKit
import Firebase


class ThirdViewController: UIViewController {

    @IBOutlet weak var clicksLabel: UILabel!
    var numberOfClicks = 0;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickedButton(_ sender: Any) {
        //run when button press
        numberOfClicks = numberOfClicks + 1;
        //update the label
        clicksLabel.text = String(numberOfClicks) + "  Likes";
        
    }
    
    

}
