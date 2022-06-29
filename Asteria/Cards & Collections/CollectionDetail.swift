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
    
//    init(cardWon1: Array<SingleCardType>) {
//        self.cardWon1 = cardWon1
//    }
    
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
    
//    var systemeSolaireArray: [SingleCardType] = filterCardsArray(collectionName: "Système solaire")
        
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
                            ForEach(cardWon1) { card in
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
