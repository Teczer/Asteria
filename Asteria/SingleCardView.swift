//
//  SingleCardView.swift
//  Asteria
//
//  Created by Apprenant 67 on 21/06/2022.
//

import SwiftUI

struct SingleCardView: View {
    var body: some View {
        ZStack {
            Image("collection1-image-3")
                .resizable()
                .scaledToFill()
                .frame(width: 390, height: 766)
                .opacity(0.5)
            CollectionCardFront(collectionCardFront: CardFront(cardFrontImage: "collection1-image-3", cardTitle: "SOLEIL", cardNumber: "1", collectionName: "SYSTEME SOLAIRE"))
        }
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView()
            .previewDevice("iPhone 12")
            .preferredColorScheme(.dark)
    }
}
