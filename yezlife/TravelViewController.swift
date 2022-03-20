//
//  TravelViewController.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/3/20.
//

import UIKit

class TravelViewController: UIViewController {

    @IBOutlet var clicksLabel: UILabel!
    var numberOfClicks = 0;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickButton(_ sender: Any) {
        numberOfClicks = numberOfClicks + 1;
        //update the label
        clicksLabel.text = String(numberOfClicks) + "  Likes";
    }
    
}
