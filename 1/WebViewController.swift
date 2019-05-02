//
//  WebViewController.swift
//  1
//
//  Created by Ezreal on 2019/4/20.
//  Copyright © 2019年 Ezreal. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var urlString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: urlString!)
        let request = URLRequest(url: url!)
        webView.load(request)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
    }
    
    @IBAction func reload(_ sender: Any) {
    }
    
    @IBAction func goBack(_ sender: Any) {
    }
    
    @IBAction func goForward(_ sender: Any) {
    }
    
    @IBAction func actionButtonTapped(_ sender: Any) {
    }
    
    @IBAction func safariButtonTapped(_ sender: Any) {
    }
}
