//
//  MainViewController.swift
//  HomeWork 6
//
//  Created by John Doe on 03/07/2022.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    
    var username: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, "+(username)

    }
    
    
    @IBAction func logOutButtonTapped() {
     
        dismiss(animated: true)
    }
    
   

}
