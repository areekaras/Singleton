//
//  Singleton.swift
//  Singleton
//
//  Created by Shibili Areekara on 28/12/21.
//

import UIKit

//'S'ingleton
final class ApiClient {
    static let instance = ApiClient()
        
    private init() {}
}

let client = ApiClient.instance



//'s'ingleton
URLSession.shared
URLSession()
