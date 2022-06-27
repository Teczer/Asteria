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
    var cardFront: CardFrontType
    var cardBack: CardBackType
    var miniCard: Bool
    
    var body: some View {
        
        ZStack {
            BlurredBackground(name: cardFront.cardFrontImage)
            
            VStack {
                HStack(alignment:.top) {
                    
                    Image(systemName: "chevron.backward.square.fill")
                        .foregroundColor(Color("LavenderBlush").opacity(0.8))
                        .font(.system(size: 32))
                        .padding()
                    Spacer()
                }
                
                Spacer()
                ZStack {
                    
                    if displayBack {
                        
                        CollectionCardBack(collectionCardBack: cardBack)
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
                        CollectionCardFront(collectionCardFront: cardFront)
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
        .toolbar {
            Image(systemName: "square.and.arrow.down")
        
        }
        
    }
}


struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView(cardFront: cardFront1, cardBack: cardBack1, miniCard: false)
            .preferredColorScheme(.dark)
    }
}
