//
//  TableViewController.swift
//  MVC_edmo
//
//  Created by Ngoc on 7/8/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var nguoi1 = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        nguoi1 = DataService.shareIntance.people
        NotificationCenter.default.addObserver(self, selector: #selector(getData(notification:)), name: .dataPerson, object: nil)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return nguoi1.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lblName.text = nguoi1[indexPath.row].name
        cell.lblPhone.text = String(nguoi1[indexPath.row].phone)
        cell.imgDetail.image = nguoi1[indexPath.row].image
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController2
        if let index = tableView.indexPathForSelectedRow{
            vc.detailPerson = nguoi1[index.row]
        }
    }
    
    @objc func getData(notification: Notification){
        let source = notification.object as! Person
        if let index = tableView.indexPathForSelectedRow{
            nguoi1[index.row].name = source.name
            nguoi1[index.row].phone = source.phone
            nguoi1[index.row].image = source.image
        } else {
            nguoi1.append(Person(name: source.name, phone: source.phone, image: source.image))
        }
        tableView.reloadData()
    }

   
}
