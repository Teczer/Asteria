//
//  LoginView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color("OxfordBlue")
                .ignoresSafeArea()
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.5)
            VStack(alignment: .center, spacing: 0) {
                
                // LOGO + ASTERIA
                Spacer()
                    .frame(height: 20)
                VStack(alignment: .center, spacing: -40) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 100)
                        .padding(.vertical, UIScreen.main.bounds.size.height / 200)
                    Image("logotitle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 270, height: 90)
                        .padding(.bottom, UIScreen.main.bounds.size.height / 10)
                }
                
                
                VStack {
                    
                    // CONNEXION
                    SignUpItemView(objectText: "Connexion")
                        .padding(.bottom)
                    // INSCRIPTION
                    SignUpItemView(objectText: "Inscription")
                        .padding(.bottom, 60)
                    // CONTINUER AVEC APPLE
                    AppleItem()
                        .padding(.bottom)
                    // CONTINUER AVEC GOOGLE
                    GoogleItem()
                        .padding(.bottom, 60)
                    // CONTINUER SANS S'IDENTIFIER
                    NoSignItemView(objectText: "Continuer sans s'identifier")
                }
                
                Spacer()
                
            } //: VSTACK
            
            
            
            
        } //: ZSTACK
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}
