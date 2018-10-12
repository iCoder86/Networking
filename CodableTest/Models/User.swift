//
//  User.swift
//  Networking
//
//  Created by Alaeddine Messaoudi on 26/11/2017.
//  Copyright © 2017 Alaeddine Me. All rights reserved.
//

import Foundation

struct User: Decodable {
    let firstName: String
    let lastName: String
    let email: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        //        case username = "user_name"
        case firstName,lastName,email,image
    }
    
    var description: String {
        return "User: { username: \(firstName), name: \(lastName) }"
    }
}
