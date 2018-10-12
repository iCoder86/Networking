//
//  Category.swift
//  Networking
//
//  Created by Alaeddine Messaoudi on 26/11/2017.
//  Copyright © 2017 Alaeddine Me. All rights reserved.
//

import Foundation

//struct Category: Decodable, CustomStringConvertible {
struct Category: Decodable {
    let id: Int?
    let name: String?
    let parentID: Int?

    enum CodingKeys: String, CodingKey {
        case id,name
        case parentID = "parent_id"
    }
    
    var description: String {
        return "User: { username: \(name) }"
    }
}
