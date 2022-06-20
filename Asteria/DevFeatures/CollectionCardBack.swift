//
//  MargauxWIP2.swift
//  Asteria
//
//  Created by Apprenant 87 on 17/06/2022.
//

import SwiftUI

struct CardBack: Identifiable {
    var id = UUID()
    var cardBackImage: String
    var cardTitle: String
    var cardFunFactIcon1: String
    var cardFunFactIcon2: String
    var cardFunFactIcon3: String
    var cardFunFactName1: String
    var cardFunFactName2: String
    var cardFunFactName3: String
    var cardFunFact1: String
    var cardFunFact2: String
    var cardFunFact3: String
    var cardDescription: String
}

struct CollectionCardBack: View {
    
    var collectionCardBack: CardBack
    
    var body: some View {
        
        ZStack {
                    
            Rectangle()
                .cornerRadius(20)
                .background(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
                .foregroundColor(Color("OxfordBlue"))
                .frame(width: 299, height: 597)
                .shadow(color: Color.white, radius: 10)
            
            VStack {
                
                Text(collectionCardBack.cardTitle)
                    .font(.custom("Montserrat", size: 30))
                    .fontWeight(.light)
                
                Divider()
                    .background(Color.white)
                    .frame(width: 299)
                
                Image(collectionCardBack.cardBackImage)
                    .resizable()
                    .scaledToFill()
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .frame(width: 146, height: 146)
                    .clipShape(Circle())
                    .shadow(color: Color.white, radius: 5)
                    .padding(.vertical, 20)
                
                Divider()
                    .background(Color.white)
                    .frame(width: 299)
                
                
                    // HSTACK FUN FACTS
                    HStack {
                        Spacer()
                        
                        // FUN FACT 1
                        VStack {
                            Image(systemName: collectionCardBack.cardFunFactIcon1)
                                .font(.system(size: 25))
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFactName1)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFact1)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            } // fin fun fact 1
                        
                        Spacer()
                        
                        // FUN FACT 2
                        VStack {
                            Image(systemName: collectionCardBack.cardFunFactIcon2)
                                .font(.system(size: 25))
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFactName2)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFact2)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            } // fin fun fact 2
                        
                        Spacer()
                        
                        // FUN FACT 3
                        VStack {
                            Image(systemName: collectionCardBack.cardFunFactIcon3)
                                .font(.system(size: 25))
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFactName3)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFact3)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            } // fin fun fact 3
                        
                        Spacer()
                    
                    }.padding(.vertical, 2) // fin Hstack fun facts
                
                Divider()
                    .background(Color.white)
                    .frame(width: 299)
                
                
                // TEXTE DESCRIPTIF
                
                Text(collectionCardBack.cardDescription)
                    .font(.custom("Montserrat", size: 12))
                    .fontWeight(.light)
                    .frame(width: 260)
                    .padding(.top, 3)
                
            } // fin Vstack

        } // fin Zstack
        
    }
}

struct CollectionCardBack_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCardBack(collectionCardBack: CardBack(
            cardBackImage: "card-background-image",
            cardTitle: "T I T R E",
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
            .preferredColorScheme(.dark)
    }
}
