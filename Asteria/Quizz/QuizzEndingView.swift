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
    @EnvironmentObject var signUpVM: SignUpViewModel
    
    @StateObject var viewRouter: ViewRouter
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
                        Text(quizzController.scoreCurrent != 0 ? "Bien joué !".uppercased():"Dommage...".uppercased())
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
                        Text("\(quizzController.scoreCurrent)")
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
                
                switch quizzController.levelId {
                case 1 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Soleil", cardFrontImage: "collec1-cardFrontImage-1-soleil", collectionName: "Système solaire", cardNumber: "1", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 2 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Comète", cardFrontImage: "collec1-cardFrontImage-2-comet", collectionName: "Système solaire", cardNumber: "2", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 3 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Neptune", cardFrontImage: "collec1-cardFrontImage-3-neptune", collectionName: "Système solaire", cardNumber: "3", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 4 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Astéroïde", cardFrontImage: "collec1-cardFrontImage-4-asteroid", collectionName: "Système solaire", cardNumber: "4", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 5 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Saturne", cardFrontImage: "collec1-cardFrontImage-5-saturn", collectionName: "Système solaire", cardNumber: "5", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 6 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Éclipse", cardFrontImage: "collec3-cardFrontImage-11-eclipse", collectionName: "Phénomènes observables", cardNumber: "1", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 7 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Super Lune", cardFrontImage: "collec3-cardFrontImage-12-moon", collectionName: "Phénomènes observables", cardNumber: "2", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 8 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Étoiles filantes", cardFrontImage: "collec3-cardFrontImage-13-etoile", collectionName: "Phénomènes observables", cardNumber: "3", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 9 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Lumière zodiacale", cardFrontImage: "collec3-cardFrontImage-14-zod-light", collectionName: "Phénomènes observables", cardNumber: "4", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 10 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Météorite", cardFrontImage: "collec3-cardFrontImage-15-meteorite", collectionName: "Phénomènes observables", cardNumber: "5", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 11 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Voie lactée", cardFrontImage: "collec2-cardFrontImage-6-voielactee", collectionName: "Galaxie", cardNumber: "1", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 12 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Whirlpool", cardFrontImage: "collec2-cardFrontImage-7-whirlpool", collectionName: "Galaxie", cardNumber: "2", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 13 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Andromède", cardFrontImage: "collec2-cardFrontImage-8-andromede", collectionName: "Galaxie", cardNumber: "3", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 14 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Magellan", cardFrontImage: "collec2-cardFrontImage-9-magellan", collectionName: "Galaxie", cardNumber: "4", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 15 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Horsehead", cardFrontImage: "collec2-cardFrontImage-10-horsehead", collectionName: "Galaxie", cardNumber: "5", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 16 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Gagarine", cardFrontImage: "collec4-cardFrontImage-16-gagarine", collectionName: "Astronautes célèbres", cardNumber: "1", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 17 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Armstrong", cardFrontImage: "collec4-cardFrontImage-17-armstrong", collectionName: "Astronautes célèbres", cardNumber: "2", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 18 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Leonov", cardFrontImage: "collec4-cardFrontImage-18-leonov", collectionName: "Astronautes célèbres", cardNumber: "3", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 19 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Chrétien", cardFrontImage: "collec4-cardFrontImage-19-chretien", collectionName: "Astronautes célèbres", cardNumber: "4", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                case 20 :
                    CollectionCardFront(collectionCardFront: CardFrontType(cardTitle: "Terechkova", cardFrontImage: "collec4-cardFrontImage-20-terechkova", collectionName: "Astronautes célèbres", cardNumber: "5", miniCard: true))
                        .offset(x: cardOffsetAnim)
                        .rotation3DEffect(.degrees(cardRotationAnim), axis: (x: 1, y: 0, z: 1))
                default: Text("Image error")
                }
                
                Spacer()
                
                VStack {
                    CustomButton(colorOfButton: "pink", textInButton: "Retour à l'Aventure")
                        .padding(.bottom)
                        .onTapGesture {
                            if let user = signUpVM.user {
                                if quizzController.levelId > user.levelprogression {
                                    signUpVM.saveProgression(progression: quizzController.levelId)
                                }
                                viewRouter.currentPage = .aventure
                                NavigationUtil.popToRootView()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    viewRouter.hideInAventure = false
                                }
                            }
                        }
                    
                    
                    CustomButton(colorOfButton: "blue", textInButton: "Voir la collection")
                        .onTapGesture {
                            if let user = signUpVM.user {
                                if quizzController.levelId > user.levelprogression {
                                    signUpVM.saveProgression(progression: quizzController.levelId)
                                }
                                
                                viewRouter.currentPage = .collection
                            }
                        }
                    
                }
                .offset(y: buttonsOffsetAnim)
            }
            
            
            .frame(width:350)
            
            .onAppear {
                // animations proper come here
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
        .navigationBarHidden(true)
    }
}

//struct QuizzEndingView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizzEndingView(viewRouter:  ViewRouter(), quizzController: QuizzController())
//        QuizzEndingView(viewRouter:  ViewRouter(), quizzController: QuizzController(), questionSerieCurrent: quizzSystemesolaire01)
//    }
//}
