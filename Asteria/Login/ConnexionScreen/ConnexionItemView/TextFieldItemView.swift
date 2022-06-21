//
//  TextFieldItemView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct TextFieldItemView: View {
    var body: some View {
        TextEditorCustom(previewText: "")
        SecureFieldCustom(previewText: "")
    }
}

struct TextFieldItemView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldItemView()
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDevice("iPhone 13")

    }
}


struct TextEditorCustom: View {
    @State private var username: String = ""
    var previewText: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("LavenderBlush"))
            if username.isEmpty {
                Text("Nom d'utilisateur")
                    .foregroundColor(Color.black.opacity(0.6))
            }
            TextField("\(previewText)", text: $username)
                .foregroundColor(Color.black)
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("LavenderBlush")))
                .frame(width: 270, height: 50)
        }
    }
}

struct SecureFieldCustom: View {
    @State private var password: String = ""
    var previewText: String
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("LavenderBlush"))
            if password.isEmpty {
                Text("Mot de passe")
                    .foregroundColor(Color.black.opacity(0.6))
            }
            SecureField("\(previewText)", text: $password)
                .foregroundColor(Color.black)
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("LavenderBlush")))
                .frame(width: 270, height: 50)
            
        }
    }
}

