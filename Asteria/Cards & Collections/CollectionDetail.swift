//
//  CollectionDetail.swift
//  Asteria
//
//  Created by Apprenant 87 on 22/06/2022.
//
//  Reste à faire sur cet élément :
//  - créer le bouton pour scroll (la meilleure solution semble être avec le ScrollViewReader, mais pas réussi pour l'instant)

import SwiftUI

struct CollectionDetail: View {

    var collection: CollectionType
    
    let rows = [GridItem(.flexible())]
    @State private var currentIndex = 0
    
    var body: some View {
    
        VStack {
            
            // NOM DE LA COLLECTION
            HStack {
                Text(collection.collectionName)
                    .font(.custom("Montserrat", size: 20))
                    .fontWeight(.light)
                    .padding(.leading, 30)
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
                ForEach(collection.collectionImages) { card in
                    NavigationLink {
                        SingleCardView(cardFront: card.cardFront, cardBack: card.cardBack, miniCard: false)
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
                                        
                        } // fin for each
                    } // fin lazygrid
            
                } // fin scroll view
            .frame(width: 390, height: 230)
            
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
                
                Image(systemName: "chevron.right.circle.fill")
                    .resizable()
                    .foregroundStyle(.white, Color("CarnationPink"))
                    .frame(width: 40, height: 40)
                    .shadow(color: Color.white, radius: 5)
                    .padding(.trailing, 30)
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
