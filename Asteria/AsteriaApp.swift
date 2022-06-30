//
//  AsteriaApp.swift
//  Asteria
//
//  Created by Theia Team on 17/06/2022.
//

import SwiftUI
import FirebaseCore
import GoogleSignIn
import FirebaseAuth


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      
    return true
      
      
  }
}

@main
struct AsteriaApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var signUp = SignUpViewModel()
    @StateObject var viewRouter = ViewRouter()

    var body: some Scene {
        WindowGroup {
            MainView(login: .constant(""), viewRouter: ViewRouter())
                .environmentObject(signUp)
        }
    }
}

func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    return GIDSignIn.sharedInstance.handle(url)
}


