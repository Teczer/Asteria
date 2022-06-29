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
//                    Image("logo") // LOGO
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 120, height: 100)
//                        .padding(.vertical, UIScreen.main.bounds.size.height / 200)
//                    Image("logotitle") // ASTERIA
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 270, height: 90)
//                        .padding(.bottom, UIScreen.main.bounds.size.height / 10)
//                    Spacer()
//                        .frame(height: 90)
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
