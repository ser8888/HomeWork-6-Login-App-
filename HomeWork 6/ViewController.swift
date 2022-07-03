//
//  ViewController.swift
//  HomeWork 6
//
//  Created by John Doe on 03/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    var user = "Alex"
    var password = "123"

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    
    @IBAction func forgotUserNameButtonTapped() {
        showAlertUserNameForgotten()
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlertPasswordForgotten()
    }
    

    
    @IBAction func logInButtonTapped(_ sender: Any) {
        if userNameTextField.text == user && passwordTextField.text == password { print("Access granted !")
        } else { showAlertLoginFailure() }
    }
  
    private func showAlertLoginFailure() {
        let alert = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter correct login and password",
            preferredStyle: .alert
        )
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil
        )
        passwordTextField.text = ""
    }
    
    private func showAlertUserNameForgotten() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is \(user)",
            preferredStyle: .alert
        )
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    private func showAlertPasswordForgotten() {
        let alert = UIAlertController(
            title: "Oops",
            message: "Your password is \(password)",
            preferredStyle: .alert
        )
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil
        )
        
    }

}

