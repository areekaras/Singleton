//
//  Singleton.swift
//  Singleton
//
//  Created by Shibili Areekara on 28/12/21.
//

import UIKit

class ApiClient {
    private static let instance = ApiClient()
    
    public static func getInstance() -> ApiClient {
        return instance
    }
    
    private init() {}
}

let client = ApiClient.getInstance()
