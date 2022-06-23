//
//  SingleCardView.swift
//  Asteria
//
//  Created by Apprenant 67 on 21/06/2022.
//

import SwiftUI

struct SingleCardView: View {
    
    // animation data
    @State private var rotationFrontValue:Double = 0
    @State private var rotationBackValue:Double = 90
    @State private var displayFront = true
    @State private var displayBack = false
    
    // card data
    let image: String
    let cardImage : String
    let cardTitle: String
    let cardNumber: String
    let collectionName: String
    var miniCard: Bool
    
    var body: some View {
        
        ZStack {
            BlurredBackground(name: image)
            
            VStack {
                HStack(alignment:.top) {
                    Image(systemName: "chevron.backward.square.fill")
                        .foregroundColor(Color("LavenderBlush").opacity(0.8))
                        .font(.system(size: 32))
                        .padding()
                    Spacer()
                }
                
                Spacer()
                    .frame(height:30)
                
                ZStack {
                    
                    if displayBack {
                        
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
                        .onTapGesture {
                            displayFront = true
                            withAnimation(.linear(duration: 0.2)) {
                                rotationBackValue = 90
                            }
                            withAnimation(.linear(duration: 0.2).delay(0.2)) {
                                rotationFrontValue = 0
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                displayBack = false
                            }
                        }
                        .rotation3DEffect(.degrees(rotationBackValue), axis: (x: 0, y: 1, z: 0))
                    }
                    
                    
                    if displayFront {
                        CollectionCardFront(collectionCardFront: CardFront(cardFrontImage: cardImage, cardTitle: cardTitle, cardNumber: cardNumber, collectionName: collectionName, miniCard: miniCard))
                            .onTapGesture {
                                displayBack = true
                                withAnimation(.linear(duration: 0.2)) {
                                    rotationFrontValue = -90
                                }
                                withAnimation(.linear(duration: 0.2).delay(0.2)) {
                                    rotationBackValue = 0
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    displayFront = false
                                }
                            }
                            .rotation3DEffect(.degrees(rotationFrontValue), axis: (x: 0, y: 1, z: 0))
                    }
                }
                
                Spacer()
            }
        }
        
    }
}


struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView(image: "collection1-image-1", cardImage: "collection1-image-1", cardTitle: "Soleil", cardNumber: "1", collectionName: "Système solaire", miniCard: false)
            .previewDevice("iPhone 12")
            .preferredColorScheme(.dark)
    }
}
