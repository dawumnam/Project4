//
//  TableViewController.swift
//  Project4
//
//  Created by dawum nam on 4/29/21.
//

import Foundation
import UIKit

class tableViewController: UITableViewController {
    
    var websites = ["apple.com","hackingwithswift.com","clien.net"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WebView") as? ViewController {
            if indexPath.row != 0 {
                websites.swapAt(indexPath.row, 0)
            }
            vc.websites = self.websites
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
