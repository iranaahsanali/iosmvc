//
//  TextFieldExtension.swift
//  iosmvc
//
//  Created by Ahsan Ali on 13/01/2019.
//  Copyright © 2019 Ahsan Ali. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    func OvalStyled(height : CGFloat) {
        self.layer.cornerRadius = height / 2.0
        self.backgroundColor = UIColor.white
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 2.0
        self.clipsToBounds = true
        self.layoutIfNeeded()
    }
    
    func setLeftPadding(pad : CGFloat)
    {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: pad, height: self.frame.height))
        self.leftView = view
        self.leftViewMode = .always
    }
}

