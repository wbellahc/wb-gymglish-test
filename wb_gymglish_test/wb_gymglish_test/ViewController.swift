//
//  ViewController.swift
//  wb_gymglish_test
//
//  Created by Wahiba BELLAHCENE on 7/15/19.
//  Copyright © 2019 Wahiba BELLAHCENE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.layer.borderWidth = 1.0
        userName.layer.borderColor = UIColor.gray.cgColor
        passWord.layer.borderWidth = 1.0
        passWord.layer.borderColor = UIColor.gray.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func loginButtonAction(_ sender: UIButton) {
        let username = userName.text
        let password = passWord.text
        
        if (username == "" || password == "") {
            return
        }
        if (username == "test" && password == "test") {
            performSegue(withIdentifier: "loginToList", sender: sender)
        } else {
            return
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginToList" {
            if let lc = segue.destination as? ListViewController {
                lc.title = "Websites"
            }
        }
    }
}

