//
//  LoginView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct LoginView: View {
    @Binding var endOnBoarding: Bool
    @Binding var username: String
    var body: some View {
        NavigationView {
            ZStack {
                Color("OxfordBlue")
                    .ignoresSafeArea()
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.5)
                VStack(alignment: .center, spacing: 0) {
                    Spacer()
                    // LOGO + ASTERIA
                    VStack(alignment: .center, spacing: -40) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 100)
                        Image("logotitle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 270, height: 90)
                    }
                    
                    Spacer()
                    
                    VStack {
                        
                        // CONNEXION
                        NavigationLink(destination: ConnexionView(endOnBoarding: $endOnBoarding, objectfield: $username)) {
                            SignUpItemView(objectText: "Connexion")
                        }
                        .navigationBarBackButtonHidden(true)
                        //                    .navigationBarTitle("")
                        .padding(.bottom)
                        // INSCRIPTION
                        NavigationLink(destination: InscriptionView(endOnBoarding: $endOnBoarding, objectfield: $username))
                        {
                            SignUpItemView(objectText: "Inscription")
                                .padding(.bottom, 60)
                        }
                        // CONTINUER AVEC APPLE
                        AppleItem()
                            .padding(.bottom)
                        // CONTINUER AVEC GOOGLE
                        GoogleItem()
                            .padding(.bottom, 60)
                        // CONTINUER SANS S'IDENTIFIER
                        Button {
                            endOnBoarding.toggle()
                        } label: {
                            NoSignItemView(objectText: "Continuer sans s'identifier")
                        }
                    }
                    
                    Spacer()
                    
                } //: VSTACK
                
                .ignoresSafeArea()
                
                
            } //: ZSTACK
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(endOnBoarding: .constant(false), username: .constant(""))
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}
