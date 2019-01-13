//
//  ActivityVC.swift
//  iosmvc
//
//  Created by Ahsan Ali on 13/01/2019.
//  Copyright © 2019 Ahsan Ali. All rights reserved.
//

import Foundation
import UIKit

class ActivityVC: UIViewController {
    
    let activity = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clear
        
        view.addSubview(activity)
        activity.center = self.view.center
        activity.style = .gray
        activity.color = UIColor.orange
        activity.translatesAutoresizingMaskIntoConstraints = false
        activity.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        activity.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
        activity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        activity.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        activity.startAnimating()
    }
    
    
}
