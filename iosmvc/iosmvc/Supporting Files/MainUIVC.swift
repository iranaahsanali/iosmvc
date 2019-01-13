//
//  MainUIVC.swift
//  iosmvc
//
//  Created by Ahsan Ali on 13/01/2019.
//  Copyright © 2019 Ahsan Ali. All rights reserved.
//

import Foundation
import UIKit

class MainUIVC: UIViewController {
    
    let activityIndicator = ActivityVC()
    @objc var isPushed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 249.0, green: 251.0, blue: 251.0, alpha: 1.0)
    }
    
    // MARK: - Setting Navigation Bar
    func setupNavigationBar(title : String)
    {
        //        let attributes = [NSFontAttributeName : UIFont.init(name: "Roboto-Regular", size: 14.0)]
        //        UINavigationBar.appearance().titleTextAttributes = attributes as [String : Any]
        //        navigationItem.title = title
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        // Title View
        let titleView = UIView()
        titleView.backgroundColor = UIColor.clear
        titleView.translatesAutoresizingMaskIntoConstraints = false
        navigationItem.titleView = titleView
        
        let navBarTitle = UILabel()
        titleView.addSubview(navBarTitle)
        navBarTitle.font = UIFont.init(name: "Roboto-Medium", size: 16.0)
        navBarTitle.textColor = UIColor.black
        navBarTitle.translatesAutoresizingMaskIntoConstraints = false
        navBarTitle.centerXAnchor.constraint(equalTo: titleView.centerXAnchor).isActive = true
        navBarTitle.centerYAnchor.constraint(equalTo: titleView.centerYAnchor).isActive = true
        navBarTitle.contentMode = .center
        navBarTitle.text = title
        
        // Back Button
        let backButton = UIButton(type: .custom)
        backButton.layer.frame = CGRect(x: -5, y: 0, width: 5, height: 5)
        backButton.setImage(UIImage(named: "backArrow.png"), for: .normal)
        backButton.setTitleColor(backButton.tintColor, for: .normal)
        backButton.addTarget(self, action: #selector(MainUIVC.GoBack), for: .touchUpInside)
        backButton.imageEdgeInsets = UIEdgeInsets(top: 3.5, left: 0, bottom: 0, right: 5)
        backButton.imageView?.contentMode = .scaleAspectFit
        backButton.contentMode = .scaleAspectFit
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        
        // Show Shadow
        navigationController?.navigationBar.layer.masksToBounds = false
        navigationController?.navigationBar.layer.shadowColor = UIColor.gray.cgColor
        navigationController?.navigationBar.layer.shadowOpacity = 0.5
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 1, height: 2)
        navigationController?.navigationBar.layer.shadowRadius = 1
        navigationController?.navigationBar.layer.shouldRasterize = true
    }
    
    @objc func GoBack()
    {
        // I have made default value as true to add @objc so that I would be able
        // to set its value from objective c class
        if isPushed{
            self.navigationController?.popViewController(animated: true)
        }else{
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    // MARK: - Activity Indicator Handling
    func startActivityIndicator()
    {
        activityIndicator.view.frame = self.view.frame
        self.view.addSubview(activityIndicator.view)
    }
    
    func stopActivityIndicator()
    {
        self.activityIndicator.view.removeFromSuperview()
    }
    
    // MARK: - Alerts
    func ShowAlertMessage(msg:String){
        let alert = UIAlertController(title: "Easy Tickets", message: msg, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
            //self.navigationController?.popToRootViewController(animated: true)
        }
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}
