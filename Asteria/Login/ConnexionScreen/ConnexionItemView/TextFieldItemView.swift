//
//  TextFieldItemView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct TextFieldItemView: View {
    var body: some View {
        TextFieldUsername(previewText: "")
        SecureFieldCustom(previewText: "")
        TextFieldEmail(previewText: "")
        SecureFieldRepeatCustom(previewText: "")
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


struct TextFieldUsername: View {
    @State private var username: String = ""
    var previewText: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("LavenderBlush"))
            if username.isEmpty {
                Text("Nom d'utilisateur")
                    .foregroundColor(Color.black.opacity(1.0))
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
                    .foregroundColor(Color.black.opacity(1.0))
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

struct TextFieldEmail: View {
    @State private var email: String = ""
    var previewText: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("LavenderBlush"))
            if email.isEmpty {
                Text("Adresse électronique")
                    .foregroundColor(Color.black.opacity(1.0))
            }
            TextField("\(previewText)", text: $email)
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

struct SecureFieldRepeatCustom: View {
    @State private var password: String = ""
    var previewText: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("LavenderBlush"))
            if password.isEmpty {
                Text("Répéter le mot de passe")
                    .foregroundColor(Color.black.opacity(1.0))
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

