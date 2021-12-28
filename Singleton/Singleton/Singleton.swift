//
//  Singleton.swift
//  Singleton
//
//  Created by Shibili Areekara on 28/12/21.
//

import UIKit


struct LoggedInUser {}


//Global mutable shared state
class ApiClient {
    static var shared = ApiClient()
    
    func login(completion: (LoggedInUser) -> Void) { }
}

let client = ApiClient.shared


class MockApiClient: ApiClient { }

ApiClient.shared = MockApiClient()

 
class LoginViewController: UIViewController {
    func didTapLoginButton() {
        ApiClient.shared.login() { user in
            //show next screen
        }
    }
}
