//
//  ListTableViewCell.swift
//  wb_gymglish_test
//
//  Created by Wahiba BELLAHCENE on 7/15/19.
//  Copyright © 2019 Wahiba BELLAHCENE. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var siteLabel: UILabel!
    
    var website : String? {
        didSet {
            if let w = website {
                if URL(string: w) != nil {
                    siteLabel?.text = w
                    print("la valeur de w est égale à \(w)")
                }
            }
        }
    }
}
