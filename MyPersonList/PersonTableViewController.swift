//
//  PersonTableViewController.swift
//  MyPersonList
//
//  Created by Vasilii on 09/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person: Person = createPerson(indexPath: indexPath)
        cell.textLabel?.text = person.name + " " + person.surname
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    // MARK: - privat func
    
        func createPerson(indexPath: IndexPath) -> Person {
        let name: String = names[indexPath.row]
        let surname: String = surnames[indexPath.row]
        let email: String = emails[indexPath.row]
        let phone: String = phones[indexPath.row]
        let person = Person(name: name, surname: surname, email: email, phone: phone)
        
        return person
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
        let detailVC = segue.destination as! DetailViewController
        let person: Person = createPerson(indexPath: indexPath)
        detailVC.name = person.name
        detailVC.surname = person.surname
        detailVC.email = person.email
        detailVC.phone = person.phone
        }
    }
    

}
