    //
    //  MYWebViewVC.swift
    //  SplitViewDemo
    //
    //  Created by user on 02/11/2022.
    //

import UIKit
import WebKit

class MYWebViewVC: UIViewController {
    
    var delegate: passUrlNextVC!
    
    var urlString: String = "https://google.com"
    
    @IBOutlet weak var myWeb: WKWebView!
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func loadThisUrl(of myUrl: String){
        guard let url = URL(string: myUrl) else {
            print(" URL is empty!!")
            return
        }
        let urlRequest = URLRequest(url: url)
        myWeb.load(urlRequest)
        myLabel.text = myUrl
    }
}


extension MYWebViewVC: passUrlNextVC{
    func passUrlTo(myUrl: String) {
        loadThisUrl(of: myUrl)
    }
    
}
