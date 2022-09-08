//
//  MainTableViewController.swift
//  APPI
//
//  Created by mac on 9/7/22.
//

import UIKit

class ContactDetailsTableViewController: UITableViewController {
    
    let persons = Person.getContactList()


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        content.text = person.rows[indexPath.row]
        content.textProperties.font = UIFont.systemFont(ofSize: 12)
        
        switch indexPath.row {
        case 0:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        case 1:
            content.text = person.telegramm
            content.image = UIImage(systemName: Contacts.telegramm.rawValue)
        default:
            content.text = person.gitAccount
            content.image = UIImage(systemName: Contacts.gitAccount.rawValue)
        }

        cell.contentConfiguration = content
        return cell
    }
}

    //MARK: - UITableViewDelegate
extension ContactDetailsTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as? HeaderTableViewCell
        let person = persons[section]
        cell?.nameLabel.text = person.name
        cell?.surnameLabel.text = person.surname
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


