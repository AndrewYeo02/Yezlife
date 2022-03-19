//
//  BacktoMain.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/3/19.
//

import UIKit

class BacktoMain: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTab(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main",bundle:nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "mainHome")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated:true)
    }
    
    

}
