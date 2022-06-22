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
                    .clipped()
                    .blur(radius: 5)
            }
            .ignoresSafeArea()
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
                
                CollectionCardFront(collectionCardFront: CardFront(cardFrontImage: "nebuleuse4", cardTitle: "Nébuleuse", cardNumber: "3", collectionName: "Voie lactée", miniCard: true))
                
                Spacer()
                
                CustomButton(colorOfButton: "pink", textInButton: "Retour à l'Aventure")
                    .padding(.bottom)
                CustomButton(colorOfButton: "blue", textInButton: "Voir la collection")
            }
            .frame(width:350)
        }
    }
}

struct QuizzEndingView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzEndingView()
    }
}
