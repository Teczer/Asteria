//
//  QuizzEndingView.swift
//  Asteria
//
//  Created by apprenant70 on 22/06/2022.
//

import SwiftUI

struct QuizzEndingView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image("nebuleuse4")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .clipped()
                    .blur(radius: 5)
            }
            Color("SpaceCadet").opacity(0.7)
                .ignoresSafeArea()
            VStack(spacing:0) {
                ScoreBar()
                    .padding()
                HStack(alignment:.bottom) {
                    VStack(alignment: .leading) {
                        Text("Bien joué".uppercased())
                            .font(.system(size: 22))
                            .fontWeight(.heavy)
                            .foregroundColor(Color("LavenderBlush"))
                        Text("Tu remportes une carte")
                            .font(.system(size: 16))
                            .fontWeight(.light)
                            .foregroundColor(Color("LavenderBlush"))
                    }
                    Spacer()
                    Text("4")
                        .font(.system(size: 60))
                        .fontWeight(.black)
                        .foregroundColor(Color("LavenderBlush").opacity(0.8))
                        .offset(y:10)
                    Text("sur \(questionNoTotal)")
                        .font(.system(size: 20))
                        .foregroundColor(Color("LavenderBlush").opacity(0.8))
                }
                .padding(.horizontal)
                .frame(height:26)
                Spacer()
                Image("nebuleuse4")
                    .resizable()
                    .scaledToFill()
                    .frame(width:188, height:376)
                    .clipped()
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("CarnationPink").opacity(0.7), lineWidth: 1))
                    .shadow(color: Color("CarnationPink").opacity(0.9), radius: 32)
                Spacer()
                CustomButton(colorOfButton: "pink", textInButton: "Retour à l'Aventure")
                    .padding(.bottom)
                CustomButton(colorOfButton: "blue", textInButton: "Voir la collection")
            }
        }
    }
}

struct QuizzEndingView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzEndingView()
    }
}
