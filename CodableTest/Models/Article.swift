//
//  Article.swift
//  Networking
//
//  Created by Alaeddine Messaoudi on 26/11/2017.
//  Copyright © 2017 Alaeddine Me. All rights reserved.
//

import Foundation

//struct Article: Decodable, CustomStringConvertible {
struct Article: Decodable {
    let id: Int
    let title: String
    let image: URL
    let author : String
    let categories: [Category]
    let datePublished: String //Date
//    let body: String?
//    let publisher: String?
//    let url: URL?
    
    enum CodingKeys: String, CodingKey {
        //        case username = "user_name"
        case id,title,image,author,categories,datePublished //,body,publisher,url
    }
    
    var description: String {
        return "User: { username: \(title) }"
    }
}
