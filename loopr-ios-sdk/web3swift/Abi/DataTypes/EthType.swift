//
//  EthType.swift
//  loopr-ios-sdk
//
//  Created by xiaoruby on 5/27/18.
//  Copyright © 2018 Loopring. All rights reserved.
//

import Foundation

public struct EthType {
    public static let MAX_BIT_LENGTH: Int = 256
    public static var MAX_BYTE_LENGTH: Int {
        return MAX_BIT_LENGTH / 8
    }
    
    public static func getTypeAsString(_ param: Any) -> String {
        let typeOfParam = "\(type(of: param))"
        
        switch typeOfParam {
        case "GethAddress":
            return "address"
        case "GethBigInt":
            return "uint256"
        default:
            return typeOfParam.lowercased()
        }
    }
    
}
