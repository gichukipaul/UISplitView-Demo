    //
    //  MainVC.swift
    //  SplitViewDemo
    //
    //  Created by user on 02/11/2022.
    //

import UIKit

class MainVC: UISplitViewController {
    
    var tableMenu: ViewController!
    var webVC : MYWebViewVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableMenu = (self.viewControllers.first as! UINavigationController).topViewController as? ViewController
        webVC = (self.viewControllers[1] as! UINavigationController).topViewController as? MYWebViewVC
//        webVC = (self.viewControllers[1] ) as? MYWebViewVC
        
//        webVC.delegate = tableMenu
                    webVC.delegate = self
    }
}

extension MainVC: passUrlNextVC{
    func passUrlTo(myUrl: String) {
        print("--In mainvc extension passurlto func")
//        webVC.delegate.passUrlTo(myUrl: myUrl)
        print("harooo")
        webVC.passUrlTo(myUrl: myUrl)
    }
    
}
