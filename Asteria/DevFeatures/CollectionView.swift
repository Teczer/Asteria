//
//  CollectionScreen.swift
//  Asteria
//
//  Created by Apprenant 87 on 20/06/2022.
//

import SwiftUI

struct CollectionView: View {
    
    var card: CardFront
    
    let items = 1...10
    
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
    
//    navigation view
        
        ZStack {
            
        Image("card-background-image")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Rectangle()
            
            
        Rectangle()
                .fill(Color("OrchidCrayola"))
                .opacity(0.4)
                .frame(width: 390, height: 118)
            
        ScrollView(.horizontal) {
            
            LazyHGrid(rows : rows, alignment: .center, spacing: 80) {
                ForEach(items, id: \.self) {
                    item in Image(card.cardFrontImage)
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
            } // fin scroll view
            .frame(width: 390, height: 230)
                        
            
            HStack {
            Rectangle()
                .fill(.black)
                .frame(width: 35, height: 250)
                .blur(radius: 10)

            Spacer()

            Rectangle()
                .fill(.black)
                .frame(width: 35, height: 250)
                .blur(radius: 10)
            }

            
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(card: CardFront(cardFrontImage: "card-background-image", cardTitle: "T I T R E", cardNumber: "1", collectionName: "NOM DE LA COLLECTION"))
    }
}
