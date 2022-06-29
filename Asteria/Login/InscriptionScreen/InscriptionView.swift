//
//  InscriptionView.swift
//  Asteria
//
//  Created by Apprenant 67 on 21/06/2022.
//

import SwiftUI

struct InscriptionView: View {
    @Binding var objectfield: String
    
    @EnvironmentObject var userVM: UserViewModel
    @State var mail = ""
    @State var mdp = ""
    @State var nom = ""
    @State var prenom = ""
    @State var age = 18
    
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
                    TextFieldUsername(previewText: prenom)
                        .padding(.bottom)
                    // ADRESSE ELECTRONIQUE
                    TextFieldEmail(previewText: mail)
                        .padding(.bottom)
                    // MOT DE PASSE
                    SecureFieldCustom(previewText: mdp)
                        .padding(.bottom)
                    // REPETER LE MOT DE PASSE
                    SecureFieldRepeatCustom(previewText: mdp)
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
