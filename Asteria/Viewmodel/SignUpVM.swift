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
    @Published var user: UserStruct?
    @Published var isLogin: Bool = false
    @Published var authUser: User?
    init() {
        if let user = Auth.auth().currentUser {
            self.authUser=user
            getUser()
        }
    }
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
                self.authUser = user
                self.createUser()
            }
        }
    }
    func getUser(){
        if let user = authUser {
            let ref = Database.database().reference()
            ref.child("users").child(user.uid).observe(.value, with: { snapshot in
                if let value = snapshot.value as? [String: Any] {
                    let name = value["name"] as? String ?? "No brand"
                    let mail = value["mail"] as? String ?? "No brand"
                    let levelprogression = value["levelprogression"] as? Int ?? 0
                    let imageprofile = value["imageprofile"] as? String ?? "No brand"
                    
                    let user = UserStruct(name: name, id: user.uid, levelprogression: levelprogression, mail: mail, imageprofile: imageprofile)
                    self.user = user
                    
                    self.isLogin = true
                }
            })
        }
    }
    func createUser() {
        if let user = authUser {
            let newUser = UserStruct(name: user.displayName ?? "noname", id: user.uid, levelprogression: 0, mail: user.email ?? "noemail", imageprofile: "https://img.20mn.fr/ZERYc3AcQmmpnIRj7dlqXA/768x492_joueur-csgo-zywoo")
            let ref = Database.database().reference()
            ref.child("users").child(user.uid).setValue(newUser.toDict) { error, ref in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    self.getUser()
                }
            }
        }
    }
    func logOut() {
        do {
            try Auth.auth().signOut()
            self.user = nil
            self.authUser = nil
            self.isLogin = false
        } catch let error as NSError {
            print(error)
        }
    }
    func saveProgression(progression: Int) {
        if user != nil {
            self.user!.levelprogression = progression
            let ref = Database.database().reference()
            ref.child("users").child(user!.id).setValue(self.user!.toDict) { error, ref in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    
                }
            }
        }
    }
}



