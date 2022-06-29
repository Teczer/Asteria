//
//  CollectionView.swift
//  Asteria
//
//  Created by Apprenant 87 on 20/06/2022.
//



import SwiftUI


struct CollectionView: View {
    @StateObject var viewRouter: ViewRouter
    @State private var cardWonCollection1: [SingleCardType] = []
    @State private var cardWonCollection2: [SingleCardType] = []
    @State private var cardWonCollection3: [SingleCardType] = []
    @State private var cardWonCollection4: [SingleCardType] = []
    
    @AppStorage("levelProgression") var levelProgression:Int = 0
    
    var body: some View {
        
        NavigationView {
        
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .opacity(0.3)
                    
                VStack {
                
                ScrollView {
                
                    CollectionDetail(collection: collection1)
                    
                    CollectionDetail(collection: collection2)
                    
                    CollectionDetail(collection: collection3)
                    
                    CollectionDetail(collection: collection4)
                    
                }
            
                }
                
                .navigationTitle("Collections".uppercased())
                .navigationBarTitleDisplayMode(.inline)
                
            }
            .onAppear() {
                viewRouter.hideInAventure = false
                if levelProgression >= 1 {
                    cardWonCollection1.append(SingleCardType(cardFront: cardFront1, cardBack: cardBack1))
                }
                if levelProgression >= 2 {
                    cardWonCollection1.append(SingleCardType(cardFront: cardFront2, cardBack: cardBack2))
                }
                if levelProgression >= 3 {
                    cardWonCollection2.append(SingleCardType(cardFront: cardFront3, cardBack: cardBack3))
                }
            }
            
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(viewRouter: ViewRouter())
            .preferredColorScheme(.dark)
            
    }
}
