//
//  APIClient.swift
//  FunFactGenerators
//
//  Created by Pranay Boggarapu on 8/26/19.
//  Copyright © 2019 Pranay Boggarapu. All rights reserved.
//

import Foundation

class APIClient {
    
    static let urlString: URL = URL(string: "http://api.fungenerators.com/fact/random?category=Countries&subcategory=USA")!
    
    class func getFunFacts() -> [String] {
        var outputData: [String] = [String]()
        let task = URLSession.shared.dataTask(with: urlString) { (data, response, error) in
            guard let data = data else {return}
            let decoder = JSONDecoder()
            do {
               let responseObject = try decoder.decode(FunFactsActualResponse.self, from: data)
                for i in 0..<responseObject.actualresponse.count {
                    outputData.append(responseObject.actualresponse[i].contents.id)
                }
            } catch {
                fatalError("Fetching failed")
            }
        }
        return outputData
    }
}
