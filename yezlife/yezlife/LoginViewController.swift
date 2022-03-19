//
//  LoginViewController.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/3/17.
//

import UIKit

class LoginViewController: UIViewController {

   
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    
    @IBAction func loginTab(_ sender: Any) {
    }
    
    @IBAction func createAccTab(_ sender: Any) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "signUp")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated:true)
        
        
        
        
        
    }
}
