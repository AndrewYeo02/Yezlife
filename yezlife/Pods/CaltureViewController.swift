//
//  CaltureViewController.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/3/20.
//

import UIKit

class CaltureViewController: UIViewController {

    @IBOutlet var clicksLabel: UILabel!
    var numberOfClicks = 0;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clicksButton(_ sender: Any) {
        numberOfClicks = numberOfClicks + 1;
        //update the label
        clicksLabel.text = String(numberOfClicks) + "  Likes";
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
