//
//  InscriptionView.swift
//  Asteria
//
//  Created by Apprenant 67 on 21/06/2022.
//

import SwiftUI

struct InscriptionView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var endOnBoarding: Bool
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
                
                HStack {
                    Button(action:
                            dismiss.callAsFunction
                           , label: {
                    Image(systemName: "chevron.backward.square.fill")
                        .foregroundColor(Color("LavenderBlush").opacity(0.8))
                        .font(.system(size: 32))
                        .padding()
                        Spacer()
                    })
                }
                
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
                    Button {
                        endOnBoarding.toggle()
                    } label: {
                        CustomButton(colorOfButton: "blue", textInButton: "Valider")
                    }
                }
                Spacer()
            } //: VSTACK
            .navigationBarHidden(true)
        } //: ZSTACK
    }
}

struct InscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionView(endOnBoarding: .constant(false), objectfield: .constant(""))
    }
}
