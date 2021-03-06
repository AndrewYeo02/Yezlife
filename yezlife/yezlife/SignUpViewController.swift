//
//  SignUpViewController.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/3/17.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    @IBAction func signUPTab(_ sender: Any) {
        if email.text?.isEmpty == true{
            print("No Text In Email Field")
            return
        }
        if password.text?.isEmpty == true{
            print("No text in password field")
            return
        }
        
        signUp()
    }
    
    
    @IBAction func alreadyHaveAccountTab(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main",bundle:nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated:true)
        
    }
    
    func signUp(){
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (authResult , error) in
            guard let user = authResult?.user, error == nil else{
                print("Error \(error?.localizedDescription)")
                return
            }
            let storyboard = UIStoryboard(name:"Main",bundle:nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "login")
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc,animated:true)
        }
    
    
    
}
}
