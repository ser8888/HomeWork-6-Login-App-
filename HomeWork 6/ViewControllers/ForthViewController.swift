//
//  ForthViewController.swift
//  HomeWork 6
//
//  Created by John Doe on 07/07/2022.
//

import UIKit

class ForthViewController: UIViewController {

    
    


    @IBOutlet var photoImage: UIImageView!
    
    var user: User!
    


override func viewDidLoad() {
    super.viewDidLoad()
    photoImage.image = UIImage(named: user.person.photo)
}

}
