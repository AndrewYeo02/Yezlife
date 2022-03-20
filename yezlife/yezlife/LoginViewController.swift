//
//  LoginViewController.swift
//  yezlife
//
//  Created by Andrew Yeo on 2022/3/17.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {

   
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
//    override func viewDidAppear(_ animated:Bool){
//        checkUserInfo()
//    }
    
    
    @IBAction func loginTab(_ sender: Any) {
        validateFields()
    }
    
    @IBAction func createAccTab(_ sender: Any) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "signUp")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated:true)
    }
    func validateFields(){
        if email.text?.isEmpty == true {
            print("No Email Text")
            return
        }
        if password.text?.isEmpty == true{
            print("No Password Text")
            return
        }
        
        login()
    }
    func login(){
        Auth.auth().signIn(withEmail: email.text!, password:password.text!){ [weak self] authResult , err in
            guard let strongSelf = self else {return}
            if let err = err {
                print(err.localizedDescription)
                
            }
            self!.checkUserInfo()
        }
    }
    func checkUserInfo(){
        if Auth.auth().currentUser != nil{
            print(Auth.auth().currentUser?.uid)
            let storyboard = UIStoryboard(name : "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "mainHome")
            vc.modalPresentationStyle = .overFullScreen
            present(vc,animated:true)
        }
    }
}
