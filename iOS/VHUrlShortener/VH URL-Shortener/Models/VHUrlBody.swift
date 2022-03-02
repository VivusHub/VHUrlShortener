//
//  VHUrlBody.swift
//  VH URL-Shortener
//
//  Created by Seun Oboite on 28/12/2021.
//  Copyright © 2021 Vivus Hub LTD. All rights reserved.
//

import Foundation

class VHUrlS {
    
    open func shorten(url: String) -> [String: String] {
        
        // Default response
        var urlDataResponse = [String: String]()
        
        // Parameters to send
        let apiKey = Bundle.main.object(forInfoDictionaryKey: "VivusHubUrlShortenerKey") as? String
        
        // URL Request parameters
        let url = URL(string: "https://sh.vivushub.com/api")!
        var request = URLRequest(url: url)
        let session = URLSession.shared
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = [
            "rType": "create",
            "apiKey": apiKey ?? ""
        ]
        
        // Request
        let task = session.dataTask(with: request, completionHandler: {data, response, error in
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    if let urlTo = json["urlTo"] as? String, let urlFrom = json["urlFrom"] as? String, let urlTimeCreated = json["urlTimeCreated"] as? String, let urlStatus = json["urlStatus"] as? String {
                        urlDataResponse["urlTo"] = urlTo
                        urlDataResponse["urlFrom"] = urlFrom
                        urlDataResponse["urlTimeCreated"] = urlTimeCreated
                        urlDataResponse["urlStatus"] = urlStatus
                    }
                    print(json)
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        
        task.resume()
        
        
        return urlDataResponse
    }
    
    
    open func getShortenInsight() -> [String: String] {
        
        // Default response
        var urlDataResponse = [String: String]()
        
        // Parameters to send
        let apiKey = Bundle.main.object(forInfoDictionaryKey: "VivusHubUrlShortenerKey") as? String
        
        // URL Request parameters
        let url = URL(string: "https://sh.vivushub.com/api")!
        var request = URLRequest(url: url)
        let session = URLSession.shared
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = [
            "rType": "get",
            "apiKey": apiKey ?? ""
        ]
        
        // Request
        let task = session.dataTask(with: request, completionHandler: {data, response, error in
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    if let timeResponse = json["timeResponse"] as? String {
                        urlDataResponse["timeResponse"] = timeResponse
                    }
                    print(json)
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        
        task.resume()
        
        return urlDataResponse
    }
    
}
