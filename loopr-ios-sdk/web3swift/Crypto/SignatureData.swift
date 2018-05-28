//
//  SignatureData.swift
//  loopr-ios-sdk
//
//  Created by xiaoruby on 5/27/18.
//  Copyright © 2018 Loopring. All rights reserved.
//

import Foundation
import CryptoSwift

open class SignatureData {
    private var _v: Int
    private var _r: Data
    private var _s: Data
    
    open var v: String {
        return String(_v)
    }
    open var r: String {
        return _r.toHexString()
    }
    open var s: String {
        return _s.toHexString()
    }
    
    init(v: Int, r: Data, s: Data) {
        _v = v
        _r = r
        _s = s
    }
}
