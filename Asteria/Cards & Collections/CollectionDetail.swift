//
//  CollectionDetail.swift
//  Asteria
//
//  Created by Apprenant 87 on 22/06/2022.
//


import SwiftUI

struct CollectionDetail: View {
    
    var collection: CollectionType
    
    let rows = [GridItem(.flexible())]
    @State private var currentIndex = 0
    @State private var cardWon1: [SingleCardType] = []
    
    @AppStorage("levelProgression") var levelProgression:Int = 0
    
    func isANewCard(card: CardFrontType) -> Bool {
        var result: Bool = true
        if (cardWon1.contains(where: { $0.cardFront.cardFrontImage == card
            .cardFrontImage }) ) {
            result = false
        }
        return result
    }
        func filterCardsArray(collectionName: String) -> [SingleCardType] {
        return self.cardWon1.filter { card in
            return card.cardFront.collectionName == collectionName
        }
    }
    var body: some View {
        
        VStack {
            
            // NOM DE LA COLLECTION
            HStack {
                Text(collection.collectionName.uppercased())
                    .font(.custom("Montserrat", size: 20))
                    .fontWeight(.light)
                    .tracking(7)
                    .padding(.leading, 40)
                    .padding(.top, 30)
                Spacer()
            }
            
            ZStack {
                
                Rectangle()
                    .fill(Color("OrchidCrayola"))
                    .opacity(0.4)
                    .frame(width: 390, height: 118)
                
                // SCROLLVIEW IMAGES DE LA COLLECTION
                ScrollView(.horizontal) {
                    
                    LazyHGrid(rows : rows, alignment: .center, spacing: 40) {
                        ForEach(filterCardsArray(collectionName: collection.collectionName)) { card in
                            NavigationLink {
                                SingleCardView(cardFront: card.cardFront, cardBack: card.cardBack, miniCard: false)
                                    .navigationBarHidden(true)
                            } label : {
                                Image(card.cardFront.cardFrontImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 93, height: 186)
                                    .clipped()
                                    .cornerRadius(20)
                                    .overlay(RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("CarnationPink"), lineWidth: 1))
                                    .shadow(color: Color.white, radius: 10)
                                
                            }
                            
                        }
                        Spacer()
                            .frame(width:10)
                        
                        // fin for each
                    } // fin lazygrid
                    
                } // fin scroll view
                .frame(width: 390, height: 230)
                .onAppear {
                    // À REFACTO
                    if levelProgression >= 1 {
                        if isANewCard(card: cardFront1) {
                            cardWon1.append(SingleCardType(cardFront: cardFront1, cardBack: cardBack1))
                        }
                    }
                    if levelProgression >= 2 {
                        if isANewCard(card: cardFront2) {
                            cardWon1.append(SingleCardType(cardFront: cardFront2, cardBack: cardBack2))
                        }
                    }
                    if levelProgression >= 3 {
                        if isANewCard(card: cardFront3) {
                            cardWon1.append(SingleCardType(cardFront: cardFront3, cardBack: cardBack3))
                        }
                    }
                    if levelProgression >= 4 {
                        if isANewCard(card: cardFront4) {
                            cardWon1.append(SingleCardType(cardFront: cardFront4, cardBack: cardBack4))
                        }
                    }
                    if levelProgression >= 5 {
                        if isANewCard(card: cardFront5) {
                            cardWon1.append(SingleCardType(cardFront: cardFront5, cardBack: cardBack5))
                        }
                    }
                    if levelProgression >= 6 {
                        if isANewCard(card: cardFront6) {
                            cardWon1.append(SingleCardType(cardFront: cardFront6, cardBack: cardBack6))
                        }
                    }
                    if levelProgression >= 7 {
                        if isANewCard(card: cardFront7) {
                            cardWon1.append(SingleCardType(cardFront: cardFront7, cardBack: cardBack7))
                        }
                    }
                    if levelProgression >= 8 {
                        if isANewCard(card: cardFront8) {
                            cardWon1.append(SingleCardType(cardFront: cardFront8, cardBack: cardBack8))
                        }
                    }
                    if levelProgression >= 9 {
                        if isANewCard(card: cardFront9) {
                            cardWon1.append(SingleCardType(cardFront: cardFront9, cardBack: cardBack9))
                        }
                    }
                    if levelProgression >= 10 {
                        if isANewCard(card: cardFront10) {
                            cardWon1.append(SingleCardType(cardFront: cardFront10, cardBack: cardBack10))
                        }
                    }
                    if levelProgression >= 11 {
                        if isANewCard(card: cardFront11) {
                            cardWon1.append(SingleCardType(cardFront: cardFront11, cardBack: cardBack11))
                        }
                    }
                    if levelProgression >= 12 {
                        if isANewCard(card: cardFront12) {
                            cardWon1.append(SingleCardType(cardFront: cardFront12, cardBack: cardBack12))
                        }
                    }
                    if levelProgression >= 13 {
                        if isANewCard(card: cardFront13) {
                            cardWon1.append(SingleCardType(cardFront: cardFront13, cardBack: cardBack13))
                        }
                    }
                    if levelProgression >= 14 {
                        if isANewCard(card: cardFront14) {
                            cardWon1.append(SingleCardType(cardFront: cardFront14, cardBack: cardBack14))
                        }
                    }
                    if levelProgression >= 15 {
                        if isANewCard(card: cardFront15) {
                            cardWon1.append(SingleCardType(cardFront: cardFront15, cardBack: cardBack15))
                        }
                    }
                    if levelProgression >= 16 {
                        if isANewCard(card: cardFront16) {
                            cardWon1.append(SingleCardType(cardFront: cardFront16, cardBack: cardBack16))
                        }
                    }
                    if levelProgression >= 17 {
                        if isANewCard(card: cardFront17) {
                            cardWon1.append(SingleCardType(cardFront: cardFront17, cardBack: cardBack17))
                        }
                    }
                    if levelProgression >= 18 {
                        if isANewCard(card: cardFront18) {
                            cardWon1.append(SingleCardType(cardFront: cardFront18, cardBack: cardBack18))
                        }
                    }
                    if levelProgression >= 19 {
                        if isANewCard(card: cardFront19) {
                            cardWon1.append(SingleCardType(cardFront: cardFront19, cardBack: cardBack19))
                        }
                    }
                    if levelProgression >= 20 {
                        if isANewCard(card: cardFront20) {
                            cardWon1.append(SingleCardType(cardFront: cardFront20, cardBack: cardBack20))
                        }
                    }
                }
                
                // OMBRES
                HStack {
                    Rectangle()
                        .fill(.black)
                        .frame(width: 35, height: 250)
                        .blur(radius: 15)
                    
                    Spacer(minLength: 350)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 35, height: 250)
                        .blur(radius: 15)
                }
                
                // BOUTON POUR SCROLL
                HStack {
                    
                    Spacer()
                    
                    Image(systemName: "chevron.compact.right")
                        .font(.system(size: 30))
                        .shadow(color: Color.white, radius: 5)
                        .padding(.trailing, 20)
                }
                
            } // fin zstack
        }
    }
}


struct CollectionDetail_Previews: PreviewProvider {
    static var previews: some View {
        CollectionDetail(collection: collection1)
            .preferredColorScheme(.dark)
        
    }
}
