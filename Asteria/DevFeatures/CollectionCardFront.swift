//
//  MargauxWIP.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct CardFront: Identifiable {
    var id = UUID()
    var cardFrontImage: String
    var cardTitle: String
    var cardNumber: String
    var collectionName: String
}

struct CollectionCardFront: View {
    
    var collectionCardFront: CardFront
    
    var body: some View {
        
        ZStack {
                    
            Image(collectionCardFront.cardFrontImage)
                .resizable()
                .scaledToFill()
                .frame(width: 299, height: 597)
                .clipped()
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 1))
                .shadow(color: Color.white, radius: 10)

            VStack {
                Spacer()
                
                Text(collectionCardFront.cardTitle)
                    .font(.custom("Montserrat", size: 30))
                    .fontWeight(.light)
                  
                Spacer(minLength: 400)
                
                // ROND + CHIFFRE
                ZStack {
                    Circle()
                        .fill(Color("OxfordBlue"))
                        .frame(width: 40, height: 40)

                    Text(collectionCardFront.cardNumber)
                        .font(.custom("Montserrat", size: 24))
                        .fontWeight(.semibold)
                        } // fin rond + chiffre
                
                    Text("C O L L E C T I O N")
                        .font(.custom("Montserrat", size: 15))
                        .fontWeight(.light)
                        .padding(.vertical, 1)
                        
                Text(collectionCardFront.collectionName)
                        .font(.custom("Montserrat", size: 15))
                        .fontWeight(.semibold)
                
                Spacer()
                
                    } // fin Vstack
                
                } // fin Zstack
    }
}

struct CollectionCardFront_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCardFront(collectionCardFront: CardFront(cardFrontImage: "card-background-image", cardTitle: "T I T R E", cardNumber: "1", collectionName: "NOM DE LA COLLECTION"))
            .preferredColorScheme(.dark)
    }
}
