//
//  StatusViewController.swift
//  HomeWorkFirst
//
//  Created by Магомед Абдуразаков on 23/06/2019.
//  Copyright © 2019 Магомед Абдуразаков. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {
    
        // MARK: - IBOutlets
    
    @IBOutlet private  var statusLabel: UILabel!
    
        // MARK: - Public Properties
    
    var status = ""
    
        // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statusLabel.text = status
    }
    
}
