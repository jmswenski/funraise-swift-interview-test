//
//  funrequest.swift
//  funraise-swift-interview-test
//
//  Created by Jason M Swenski on 1/5/18.
//  Copyright © 2018 Funraise. All rights reserved.
//

import Foundation

class FUNRequest {
   
    func doRequest(url: String) -> String {
        
        let semaphore = DispatchSemaphore(value: 0);
        let url = URL(string: url)
        var responseBody : String = ""
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if let data = data {
                responseBody =  String(data: data, encoding: String.Encoding.utf8)!
            } else if let error = error {
                print(error.localizedDescription)
            }
           
            let r = (response as? HTTPURLResponse)?.statusCode
            print("status code: ",r!)
            semaphore.signal();
        }
        
        task.resume()
        
        semaphore.wait(timeout: DispatchTime.distantFuture)
        
        return responseBody
    }
}
