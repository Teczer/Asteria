//
//  InscriptionView.swift
//  Asteria
//
//  Created by Apprenant 67 on 21/06/2022.
//

import SwiftUI

struct InscriptionView: View {
    @Binding var objectfield: String
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
                
                VStack {
                    
                    // CONNEXION TITLE
                    ConnexionTitleItemView(objectText: "INSCRIPTION")
                    // NOM D'UTILISATEUR
                    TextFieldUsername(previewText: "")
                        .padding(.bottom)
                    // ADRESSE ELECTRONIQUE
                    TextFieldEmail(previewText: "")
                        .padding(.bottom)
                    // MOT DE PASSE
                    SecureFieldCustom(previewText: "")
                        .padding(.bottom)
                    // REPETER LE MOT DE PASSE
                    SecureFieldRepeatCustom(previewText: "")
                        .padding(.bottom, 60)
                    // VALIDER
                    CustomButton(colorOfButton: "blue", textInButton: "Valider")
                }
                .padding(.bottom, 200)
                
            } //: VSTACK
            
            
        } //: ZSTACK
    }
}

struct InscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionView(objectfield: .constant(""))
    }
}
