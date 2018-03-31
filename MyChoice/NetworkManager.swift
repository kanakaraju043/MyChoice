//
//  NetworkManager.swift
//  MyChoice
//
//  Created by KANAKARAJU GANDREDDI on 12/25/17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class NetworkManager: NSObject {

    typealias completionHandlerWithData = (NSDictionary) -> Void

    
    class func getDataFromServer(completionHandler: @escaping completionHandlerWithData) ->Void{
        let url = URL(string: "https://api.myjson.com/bins/3b0u2")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            guard data != nil && error == nil else {
                return
            }
            
            do{
               let json = (try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary)!

                completionHandler(json)
                
            }catch let parseError as NSError
            {
                print("parseError \(parseError)")
            }
            
        }
        
        task.resume()
        
    }
}

