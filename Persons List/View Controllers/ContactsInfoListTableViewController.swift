//
//  ContactsInfoListTableViewController.swift
//  Persons List
//
//  Created by Сергеев Александр on 02.12.2021.
//

import UIKit

class ContactsInfoListTableViewController: UITableViewController {
    
    // MARK: - Properties
    private let cellName = "contactInfoCell"
    private let arContacts = Person.getContactsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension ContactsInfoListTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arContacts.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        var contentCell = cell.defaultContentConfiguration()
        
        let person = arContacts[indexPath.section]
        switch indexPath.row {
        case 0:
            contentCell.text = person.phone
            contentCell.image = UIImage(named: "phone")
        default:
            contentCell.text = person.email
            contentCell.image = UIImage(named: "email")
        }
        
        cell.contentConfiguration = contentCell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        arContacts[section].fullName
    }
}
