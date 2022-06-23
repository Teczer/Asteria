//
//  SingleCardView.swift
//  Asteria
//
//  Created by Apprenant 67 on 21/06/2022.
//

import SwiftUI

struct SingleCardView: View {
    @State var turnCard: Bool
    @State private var rotationValue:Double = 0
    @State private var rotationAnswerValue:Double = 90
    let image: String
    let cardImage : String
    let cardTitle: String
    let cardNumber: String
    let collectionName: String
    var miniCard: Bool
    var body: some View {
        ZStack {
            BlurredBackground(name: image)
            CollectionCardBack(collectionCardBack: CardBack(
                cardBackImage: image,
                cardTitle: cardTitle,
                cardFunFactIcon1: "bolt.circle.fill",
                cardFunFactIcon2: "bolt.circle.fill",
                cardFunFactIcon3: "bolt.circle.fill",
                cardFunFactName1: "Spec 1 :",
                cardFunFactName2: "Spec 2 :",
                cardFunFactName3: "Spec 3 :",
                cardFunFact1: """
                                    Chiffre
                                    ou fun fact
                                    """,
                cardFunFact2: """
                                    Chiffre
                                    ou fun fact
                                    """,
                cardFunFact3: """
                                    Chiffre
                                    ou fun fact
                                    """,
                cardDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue placerat quam id blandit. Cras maximus tempor efficitur. Curabitur leo metus, porta vel blandit vitae, suscipit et ex. Etiam ac rutrum mauris, sed euismod magna. Sed a porta urna. Nullam vehicula fermentum facilisis. Pellentesque gravida, nisl a consectetur mattis, magna urna pretium elit, eget euismod enim sapien quis orci. Proin quis tellus eros."))
            .rotation3DEffect(.degrees(rotationAnswerValue), axis: (x: 0, y: 1, z: 0))
            CollectionCardFront(collectionCardFront: CardFront(cardFrontImage: cardImage, cardTitle: cardTitle, cardNumber: cardNumber, collectionName: collectionName, miniCard: miniCard))
                .onTapGesture {
                    withAnimation(.linear(duration: 0.2)) {
                        rotationValue = -90
                    }
                    withAnimation(.linear(duration: 0.2).delay(0.2)) {
                        rotationAnswerValue = 0
                    }
                }
                .rotation3DEffect(.degrees(rotationValue), axis: (x: 0, y: 1, z: 0))
        }



    }
}


struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView(turnCard: false, image: "collection1-image-1", cardImage: "collection1-image-1", cardTitle: "SOLEIL", cardNumber: "1", collectionName: "SYSTEME SOLAIRE", miniCard: false)
            .previewDevice("iPhone 12")
            .preferredColorScheme(.dark)
    }
}
