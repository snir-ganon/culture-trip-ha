//
//  NetworkManager.swift
//  HomeAssignment
//
//  Created by Snir Ganon on 05/10/2020.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation
import Alamofire

protocol NetworkManagerProtocol {
    func getArticles(completionHandler: @escaping ([Article], AFError?) -> Void)
}

class NetworkManager: NetworkManagerProtocol {
    
    static let shared = NetworkManager()
    
    func getArticles(completionHandler: @escaping ([Article], AFError?) -> Void) {
        AF.request("https://cdn.theculturetrip.com/home-assignment/response.json").responseJSON { response in
            
            switch response.result {
            case .success(let JSON):
                debugPrint(JSON)
                do {
                    if let data = response.data {
                        if let dict = JSON as? [String: Any] {
                            debugPrint(dict["data"])
                            if let jsonData = try? JSONSerialization.data(withJSONObject: dict["data"])
                            {
                                let articles: [Article] = try JSONDecoder().decode([Article].self, from: jsonData)
                                completionHandler(articles, response.error)
                            }
                        }
                    }
                    else {
                        debugPrint("ERRORR")
                    }
                }
                catch let error as NSError {
                    print("Failed to load: \(error)")
                }
            case .failure(let error):
                ()
            }
        }
    }
}
