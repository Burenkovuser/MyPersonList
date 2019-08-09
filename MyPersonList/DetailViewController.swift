//
//  DetailViewController.swift
//  MyPersonList
//
//  Created by Vasilii on 09/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var name: String!
    var surname: String!
    var phone: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = name + " " + surname
        phoneLabel.text = "Phone: " + phone
        emailLabel.text = "Email: " + email
    }
}
