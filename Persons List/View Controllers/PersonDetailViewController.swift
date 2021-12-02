//
//  PersonDetailViewController.swift
//  Persons List
//
//  Created by Сергеев Александр on 02.12.2021.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var contactPhone: UILabel!
    @IBOutlet weak var contactEmail: UILabel!
    
    // MARK: - Properties
    var currentContact: Person? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = currentContact?.fullName
        setData(phone: currentContact?.phone ?? "", email: currentContact?.email ?? "")
    }

}

extension PersonDetailViewController {
    func setData(phone: String = "", email: String = "") {
        contactPhone.text = "Phone: \(phone)"
        contactEmail.text = "Email: \(email)"
    }
}
