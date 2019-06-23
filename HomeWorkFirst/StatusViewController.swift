//
//  StatusViewController.swift
//  HomeWorkFirst
//
//  Created by Магомед Абдуразаков on 23/06/2019.
//  Copyright © 2019 Магомед Абдуразаков. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {
    
    @IBOutlet private  var statusLabel: UILabel!
    
    var status = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statusLabel.text = status
    }
    
}
