//
//  loginTothePage.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/3/17.
//

import UIKit

class loginTothePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

//    @IBAction func loginTothepage(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(identifier: "login")
//        vc.modalPresentationStyle = .overFullScreen
//        present(vc,animated: true)
//    }
//    
    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "LoginView", sender: self)
    }
    

}
