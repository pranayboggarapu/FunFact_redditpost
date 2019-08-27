//
//  FunFactsResponse.swift
//  FunFactGenerators
//
//  Created by Pranay Boggarapu on 8/26/19.
//  Copyright © 2019 Pranay Boggarapu. All rights reserved.
//

import Foundation

struct FunFactsResponse: Codable {
    var successClass: successResponse
    var contents: contentsResponse
}

struct FunFactsActualResponse: Codable {
    var actualresponse: [FunFactsResponse]
}

struct successResponse: Codable {
    var total: Int
}

struct contentsResponse: Codable {
    var fact: String
    var id: String
    var category: String
    var subcategory: String
}
