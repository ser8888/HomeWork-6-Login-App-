//
//  SecondPageViewController.swift
//  HomeWork 6
//
//  Created by John Doe on 07/07/2022.
//

import UIKit

class SecondPageViewController: UIViewController {

    @IBOutlet var photoImageNew: UIImageView!
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var fullnameLable: UILabel!
    @IBOutlet var familyStatusLabel: UILabel!
    @IBOutlet var childrenLable: UILabel!
    @IBOutlet var occupationLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    @IBOutlet var homeAnimalsLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(" второй \(user.person.fullName)")
 //       photoImage.image = UIImage(named: user.person.photo)
 //       title = user.person.fullName
//        fullnameLable.text = user.person.job.jobTitle.rawValue
        familyStatusLabel.text = user.person.familyStatus.rawValue
        childrenLable.text = String(user.person.children)
        hobbyLabel.text = user.person.sport
        homeAnimalsLabel.text = user.person.homeAnimals.rawValue
        
        

    }
    
}
