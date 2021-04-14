//
//  ShortContactsListViewController.swift
//  ContactsList
//
//  Created by Никита  on 14.04.2021.
//

import UIKit

class ShortContactsListViewController: UITableViewController {


    private var contacts = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactName", for: indexPath)
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailedInformationVC = segue.destination as? DetailedInformationViewController else { return }
        guard let indexPath = tableView.indexPathsForSelectedRows?.first else {return}
        let person = contacts[indexPath.row]
        detailedInformationVC.person = person

    }


}
