//
//  funcrypto.swift
//  funraise-swift-interview-test
//
//  Created by Jason M Swenski on 1/5/18.
//  Copyright © 2018 Funraise. All rights reserved.
//

import Foundation

class FUNCrypto {
    
    func MD5(string: String) -> String {
        let messageData = string.data(using:.utf8)!
        var digestData = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        
        return digestData.map { String(format: "%02hhx", $0) }.joined()
    }

}
