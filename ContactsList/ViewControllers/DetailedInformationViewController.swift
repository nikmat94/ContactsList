//
//  DetailedInformationViewController.swift
//  ContactsList
//
//  Created by Никита  on 14.04.2021.
//

import UIKit

class DetailedInformationViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneNumberLabel.text = "PhoneNumber: \(person.phoneNumber)"
        emailLabel.text = "email: \(person.email)"

    }
}
