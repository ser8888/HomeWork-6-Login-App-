//
//  ViewController.swift
//  HomeWork 6
//
//  Created by John Doe on 03/07/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
//    private let user = "Alex"
//    private let password = "123"
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(user.person.fullName, user.person.photo)
        userNameTextField.text = user.login
        passwordTextField.text = user.password
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let firstVC = viewController as? WelcomeViewController {
                firstVC.user = user
            } else if let secondVC = viewController as? SecondPageViewController {
                secondVC.view.backgroundColor = .systemGray
                secondVC.user = user
            } else if let thirdVC = viewController as? ThirdPageViewController {
                thirdVC.view.backgroundColor = .gray
            } else if let navigationVC = viewController as? UINavigationController {
                guard let forthVC = navigationVC.topViewController as? ForthViewController else { return }
                forthVC.title = "Forth Screen"
                forthVC.view.backgroundColor = .systemMint
                }
            }
        
        }
//        guard let WelcomeVC = segue.destination as? WelcomeViewController else { return }
//        WelcomeVC.username = user
    

override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
}
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgottenRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.login)")
        : showAlert(title: "Oops!", message: "Your password is \(user.password)")
    }
    
    @IBAction func logInButtonTapped(_ sender: Any) {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, eneter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }

    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}



