//
//  MoreViewController.swift
//  1
//
//  Created by Ezreal on 2019/4/20.
//  Copyright © 2019年 Ezreal. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier, identifier == "More to Web" {
            let toNav = segue.destination as! UINavigationController
            let toVC = toNav.viewControllers.first as! WebViewController
            toVC.urlString = (sender as! String)
        }
    }
    
    @IBAction func safariButtonTapped(_ sender: Any) {
    }
    
    @IBAction func communityButtonTapped(_ sender: Any) {
    }
    
    @IBAction func twitterButtonTapped(_ sender: Any) {
    }
    
}
