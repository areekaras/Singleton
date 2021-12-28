//
//  Singleton.swift
//  Singleton
//
//  Created by Shibili Areekara on 28/12/21.
//

import UIKit


struct LoggedInUser {}
struct FeedItem {}

//'s'ingleton
class ApiClient {
    static let shared = ApiClient()
    
    func login(completion: (LoggedInUser) -> Void) {}
    func loadFeed(completion: (FeedItem) -> Void) {}
}

class MockApiClient: ApiClient {}

class LoginViewController: UIViewController {
    var api = ApiClient.shared //You need this for testing - property dependency injection
    
    func didTapLoginButton() {
        api.login() { user in
            //show feed screen
        }
    }
}

class FeedViewController: UIViewController {
    var api = ApiClient.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.loadFeed() { loadedItems in
            //update UI
        }
    }
}
