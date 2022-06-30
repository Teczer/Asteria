//
//  LoginVM.swift
//  Asteria
//
//  Created by Apprenant 67 on 30/06/2022.
//

import SwiftUI
import Firebase
import GoogleSignIn

class SignUpViewModel: ObservableObject {
    
    @Published var isLogin: Bool = false
    
    func signUpWithGoogle() {
        
        // get app clien id
        guard let clientId = FirebaseApp.app()?.options.clientID else { return }
        
        // get configuration
        let config = GIDConfiguration(clientID: clientId)
        
        //SignIn
        
        GIDSignIn.sharedInstance.signIn(with: config, presenting: ApplicationUtility.rootViewController) {
            [self] user, err in
            
            
            if let error = err {
                print(error.localizedDescription)
                return
            }
            
            guard
                let authentication = user?.authentication,
                let idToken = authentication.idToken
            else { return }
            
            let credential  = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)
            
            Auth.auth().signIn(with: credential) { result, error in
                
                if let err = error {
                    print(err.localizedDescription)
                    return
                }
                
                guard let user = result?.user else { return }
                print(user.displayName)
                isLogin.toggle()
            }
        }
    }
}
    
