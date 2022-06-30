//
//  ConnexionView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct ConnexionView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var endOnBoarding: Bool
    @Binding var objectfield: String
    @AppStorage("isLoggedIn") var isLoggedIn = false

    var body: some View {
        ZStack {
            Color("OxfordBlue")
                .ignoresSafeArea()
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.5)
            
            VStack {
                HStack {
                    Button(action:
                            dismiss.callAsFunction
                           , label: {
                    Image(systemName: "chevron.backward.square.fill")
                        .foregroundColor(Color("LavenderBlush").opacity(0.8))
                        .font(.system(size: 32))
                        .padding()
                        Spacer()
                            .frame(width: 300)
                    })
                }
                Spacer()
            }
            
            VStack(alignment: .center, spacing: 0) {
                Spacer()
                // LOGO + ASTERIA
                VStack(alignment: .center, spacing: -40) {
                    Spacer()
                    VStack {
                        // CONNEXION TITLE
                        ConnexionTitleItemView(objectText: "CONNEXION")
                        // NOM D'UTILISATEUR
                        TextFieldUsername(previewText: "")
                            .padding(.bottom)
                        // MOT DE PASSE
                        SecureFieldCustom(previewText: "")
                            .padding(.bottom, 60)
                        // VALIDER
                        Button {
                            isLoggedIn = true
                            endOnBoarding.toggle()
                        } label: {
                            CustomButton(colorOfButton: "blue", textInButton: "Valider")
                        }
                    }
                    Spacer()
                }
            } //: VSTACK
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView(endOnBoarding: .constant(false), objectfield: .constant(""))
    }
}
