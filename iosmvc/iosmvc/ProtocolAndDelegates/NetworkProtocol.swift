//
//  NetworkProtocol.swift
//  iosmvc
//
//  Created by Ahsan Ali on 13/01/2019.
//  Copyright © 2019 Ahsan Ali. All rights reserved.
//

import Foundation

// This file is the generic Protocol for calling API's.
// Any class that will hit API's will implement these protocols
protocol NetworkProtocol{
    func apiCallBack(apiName:String , apiResponse:[String : AnyObject])
}
