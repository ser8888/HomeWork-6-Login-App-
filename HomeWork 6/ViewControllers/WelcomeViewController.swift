//
//  MainViewController.swift
//  HomeWork 6
//
//  Created by John Doe on 03/07/2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var centerLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Welcome View Controller")
        print(user.person.fullName)
        welcomeLabel.text = "Welcome, "+(user.login)+"!"
    }
    
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    
   

}
