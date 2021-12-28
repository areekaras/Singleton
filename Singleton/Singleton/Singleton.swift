//
//  Singleton.swift
//  Singleton
//
//  Created by Shibili Areekara on 28/12/21.
//

import UIKit

//Main Module
extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: (FeedItem) -> Void) {}
}

//Api Module
class ApiClient {
    static let shared = ApiClient()
    
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}

//Login Module
struct LoggedInUser {}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        login?() { user in
            //show feed screen
        }
    }
}

//Feed Module
struct FeedItem {}

class FeedService {
    var loadFeed: (((FeedItem) -> Void) -> Void)?
    
    func load() {
        loadFeed?() { loadedItems in
            //update UI
        }
    }
}
