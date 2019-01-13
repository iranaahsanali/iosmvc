//
//  General.swift
//  iosmvc
//
//  Created by Ahsan Ali on 13/01/2019.
//  Copyright © 2019 Ahsan Ali. All rights reserved.
//

import Foundation

extension Dictionary {
    var prettyPrintedJSON: String? {
        do {
            let data: Data = try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
            return String(data: data, encoding: .utf8)
        } catch _ {
            return nil
        }
    }
}

func prettyPrint(with json: [String:AnyObject]) -> String{
    let data = try! JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
    let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
    return string! as String
}
