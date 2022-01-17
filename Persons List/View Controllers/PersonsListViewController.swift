//
//  PersonsListViewController.swift
//  Persons List
//
//  Created by Сергеев Александр on 02.12.2021.
//

import UIKit

class PersonsListViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    private let cellName = "contactCell"
    private let arContacts = Person.getContactsList()
    private let segueToContact = "toDetailContact"
    private var selectContact: Person? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == segueToContact else { return }
        guard let detailContactVC = segue.destination as? PersonDetailViewController else { return }
        guard let contact = selectContact else { return }
        
        detailContactVC.currentContact = contact
    }
}

extension PersonsListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arContacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        var contentCell = cell.defaultContentConfiguration()
        
        contentCell.text = arContacts[indexPath.row].fullName
        
        cell.contentConfiguration = contentCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        selectContact = arContacts[indexPath.row]
        
        performSegue(withIdentifier: segueToContact, sender: nil)
    }
}
