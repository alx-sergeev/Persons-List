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
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arContacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        var contentCell = cell.defaultContentConfiguration()
        
        contentCell.text = "My test"
        
        cell.contentConfiguration = contentCell
        
        return cell
    }
}
