//
//  ViewController.swift
//  CodableTest
//
//  Created by Mehul on 08/10/18.
//  Copyright © 2018 Mehul. All rights reserved.
//

import UIKit
//import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        APIManager.logIn(withEmail: "", password: "") { (result) in
            switch result {
            case .success(let value):
                print(value)
            case .failure(let error):
                print("==>\(error.localizedDescription)")
            }
        }

        APIManager.getArticles { (result) in
            switch result {
            case.success(let value):
                print(value)
            case .failure(let error):
                print("==>\(error.localizedDescription)")
            }
        }
        
        APIManager.getArticle(withArticleId: 1) { (result) in
            switch result {
            case.success(let value):
                print(value)
            case .failure(let error):
                print("==>\(error.localizedDescription)")
            }
        }
        
    }
    
}

