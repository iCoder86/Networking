//
//  Constant.swift
//  CodableTest
//
//  Created by Mehul on 08/10/18.
//  Copyright © 2018 Mehul. All rights reserved.
//

import Foundation

struct K {
    struct ProductionServer {
        static let baseURL = "http://itechnodev.com/api"
    }
    
    struct APIParameterKey {
        static let password = "password"
        static let email = "email"
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
