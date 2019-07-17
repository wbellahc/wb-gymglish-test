//
//  WebsiteViewController.swift
//  wb_gymglish_test
//
//  Created by Wahiba BELLAHCENE on 7/16/19.
//  Copyright © 2019 Wahiba BELLAHCENE. All rights reserved.
//

import UIKit
import WebKit

class WebsiteViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var myWebView: WKWebView!
    var url: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView.navigationDelegate = self
        
        let request = URLRequest(url: url)
        myWebView?.load(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
