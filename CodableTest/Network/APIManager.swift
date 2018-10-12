//
//  APIClient.swift
//  CodableTest
//
//  Created by Mehul on 12/10/18.
//  Copyright © 2018 Mehul. All rights reserved.
//

import Foundation
import Alamofire

class APIManager {
    static func logIn(withEmail email:String, password:String, completion:@escaping (Result<User>)->Void) {
        Alamofire.request(APIRouter.login(email: email, password: password)).responseDecodable { (response:DataResponse<User>) in
            switch response.result {
            case .success:
                completion(response.result)
            case .failure:
                completion(response.result)
            }
        }
    }
    
    static func getArticle(withArticleId id:Int, completion:@escaping (Result<Article>)->Void) {
        Alamofire.request(APIRouter.article(id: id)).responseDecodable
            { (response:DataResponse<Article>) in
            switch response.result {
            case .success:
                completion(response.result)
            case .failure:
                completion(response.result)
            }
        }
    }
    
    static func getArticles(completion:@escaping (Result<[Article]>)->Void) {
        Alamofire.request(APIRouter.articles).responseDecodable
            { (response:DataResponse<[Article]>) in
            switch response.result {
            case .success:
                completion(response.result)
            case .failure:
                completion(response.result)
            }
        }
    }
}
