    //
    //  ViewController.swift
    //  SplitViewDemo
    //
    //  Created by user on 02/11/2022.
    //

import UIKit

class ViewController: UITableViewController, passUrlNextVC {
    
    func passUrlTo(myUrl: String) {
        print("nipo site")
            //        (self.parent!.splitViewController as! MainVC).webVC.urlString = myUrl
        (self.parent!.splitViewController as! MainVC).webVC.passUrlTo(myUrl: myUrl)
            //        (self.parent!.splitViewController as! MainVC).passUrlTo(myUrl: myUrl)
    }
    
    
    let websites = ["Yahoo", "Google", "Apple", "Bing", "Amazon"]
    let urls = ["https://yahoo.com", "https://google.com", "https://apple.com", "https://bing.com", "https://amazon.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // Configure cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        cell.detailTextLabel?.text = urls[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
            // Send url to webview controller and load the view
        let selectedUrl = urls[indexPath.row]
        passUrlTo(myUrl: selectedUrl)
        print("Table cell did select row  visit +\(selectedUrl) ")
        self.parent?.splitViewController?.hide(.primary)
        let vc = (self.parent!.splitViewController as! MainVC).webVC
        self.parent?.splitViewController?.showDetailViewController(vc!, sender: nil)
    }
}
