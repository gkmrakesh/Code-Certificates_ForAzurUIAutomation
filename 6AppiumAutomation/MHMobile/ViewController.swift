//
//  ViewController.swift
//  MHMobile
//
//  Created by Rakesh MEMBARAM on 09/07/19.
//  Copyright © 2019 Rakesh MEMBARAM. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {
    @IBOutlet weak var mhLabel: UILabel!
    @IBOutlet weak var increaseLabel: UILabel!
    var increaseValue=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let json=JSON.init(parseJSON: """
            {
                "MH": "MH Airline"
            }
        """)
        
        mhLabel.text=json["MH"].string
        
    }
    
    @IBAction func increase(_ sender: Any) {
        increaseValue += 1
        
        increaseLabel.text = "\(increaseValue)"
    }
}

