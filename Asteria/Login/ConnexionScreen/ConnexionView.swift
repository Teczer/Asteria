//
//  ConnexionView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct ConnexionView: View {
    @Binding var username: String
    var body: some View {
        ZStack {
            Color("OxfordBlue")
                .ignoresSafeArea()
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.5)
            
            // BOUTON BACK
            
            
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
                
                    Spacer()
                        .frame(height: 119)
                    
                    VStack {
                        
                        // CONNEXION TITLE
                        ConnexionTitleItemView()
                        // NOM D'UTILISATEUR
                        TextEditorCustom(previewText: "")
                            .padding(.bottom)
                        // MOT DE PASSE
                        SecureFieldCustom(previewText: "")
                            .padding(.bottom, 60)
                        // VALIDER
                        CustomButton(colorOfButton: "blue", textInButton: "Valider")
                    }
                    Spacer()
                }
                
                
            } //: VSTACK
            
            
            
            
            
        } //: ZSTACK
        
    }
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView(username: .constant(""))
    }
}
