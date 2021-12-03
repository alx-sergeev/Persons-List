//
//  ContactsInfoListTableViewController.swift
//  Persons List
//
//  Created by Сергеев Александр on 02.12.2021.
//

import UIKit

class ContactsInfoListTableViewController: UITableViewController {
    
    // MARK: - Properties
    let cellName = "contactInfoCell"
    let arContacts = Person.getContactsList()
    
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
        
        let curSect = indexPath.section
        let curRow = indexPath.row
        if curRow == 0 {
            contentCell.text = arContacts[curSect].phone
            contentCell.image = UIImage(named: "phone")
        } else if curRow == 1 {
            contentCell.text = arContacts[curSect].email
            contentCell.image = UIImage(named: "email")
        }
        
        cell.contentConfiguration = contentCell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arContacts[section].fullName
    }
}
