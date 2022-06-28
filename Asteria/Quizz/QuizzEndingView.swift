//
//  QuizzEndingView.swift
//  Asteria
//
//  Created by apprenant70 on 22/06/2022.
//

import SwiftUI

struct QuizzEndingView: View {
    
    // animation values
    @State private var scoreBarOffsetAnim:Double = -200
    @State private var scoreTextOffsetAnim:Double = 400
    @State private var wellplayedTextOffsetAnim:Double = -400
    @State private var wellplayedSubtextOffsetAnim:Double = -400
    @State private var cardRotationAnim:Double = 80
    @State private var cardOffsetAnim:Double = 400
    @State private var buttonsOffsetAnim:Double = 200
    @StateObject var quizzController : QuizzController
        
    var body: some View {
        ZStack {
            BlurredBackground(name: "nebuleuse4")
            VStack(spacing:0) {
                ScoreBar(quizzController: quizzController)
                    .padding()
                    .offset(y:scoreBarOffsetAnim)
                HStack(alignment:.bottom) {
                    VStack(alignment: .leading) {
                        Text("Bien joué".uppercased())
                            .font(.system(size: 22))
                            .fontWeight(.heavy)
                            .foregroundColor(Color("LavenderBlush"))
                            .offset(x:wellplayedTextOffsetAnim)
                        Text("Tu remportes une carte")
                            .font(.system(size: 16))
                            .fontWeight(.light)
                            .foregroundColor(Color("LavenderBlush"))
                            .offset(x:wellplayedSubtextOffsetAnim)
                    }
                    Spacer()
                    HStack {
                        Text("2")
                            .font(.system(size: 60))
                            .fontWeight(.black)
                            .foregroundColor(Color("LavenderBlush").opacity(0.8))
                            .offset(y:10)
                        Text("sur \(quizzController.questionNoTotal)")
                            .font(.system(size: 20))
                            .foregroundColor(Color("LavenderBlush").opacity(0.8))
                    }
                    .offset(x:scoreTextOffsetAnim)
                    
                }
                .padding(.horizontal)
                .frame(height:26)
                Spacer()
                
                CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Nébuleuse", cardFrontImage: "nebuleuse4", collectionName: "Voie Lactée", cardNumber: "3", miniCard: true))
                    .offset(x: cardOffsetAnim)
                    .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                
                Spacer()
                
                VStack {
                    CustomButton(colorOfButton: "pink", textInButton: "Retour à l'Aventure")
                        .padding(.bottom)
                    
                    CustomButton(colorOfButton: "blue", textInButton: "Voir la collection")
                }
                .offset(y: buttonsOffsetAnim)
            }
            
            
            .frame(width:350)
            
            // animations proper come here
            .onAppear {
                withAnimation(.easeOut(duration: 0.3)) {
                    scoreBarOffsetAnim = 0
                    scoreTextOffsetAnim = 0
                }
                withAnimation(.easeOut(duration: 0.6).delay(0.2)) {
                    wellplayedTextOffsetAnim = 0
                }
                withAnimation(.easeOut(duration: 0.6).delay(0.7)) {
                    wellplayedSubtextOffsetAnim = 0
                }
                withAnimation(.easeOut(duration: 0.8).delay(1.5)) {
                    cardRotationAnim = 0
                    cardOffsetAnim = 0
                }
                withAnimation(.easeOut(duration: 0.1).delay(4)) {
                    buttonsOffsetAnim = 0
                }
            }
        }
    }
}

struct QuizzEndingView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzEndingView(quizzController: QuizzController())
    }
}
