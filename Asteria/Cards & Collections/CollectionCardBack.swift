//
//  MargauxWIP2.swift
//  Asteria
//
//  Created by Apprenant 87 on 17/06/2022.
//

import SwiftUI

struct CollectionCardBack: View {
    
    var collectionCardBack: CardBackType
    
    var body: some View {
        
        ZStack {
                    
            Rectangle()
                .cornerRadius(20)
                .background(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
                .foregroundColor(Color("OxfordBlue"))
                .frame(width: 300, height: 600)
                .shadow(color: Color.white, radius: 10)
            
            VStack {
                
                Text(collectionCardBack.cardTitle.uppercased())
                    .font(.custom("Montserrat", size: 30))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 30)
                
//                Divider()
//                    .background(Color.white)
//                    .frame(width: 300)
                
                Image(collectionCardBack.cardBackImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width:300, height:200)
                    .clipped()
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 1))
//                    .shadow(color: Color.white, radius: 5)
//                    .position(x: 195, y: 200)
//                    .padding(.top, 20)
                
//                    .resizable()
//                    .scaledToFill()
//                    .overlay(Rectangle().stroke(Color.white, lineWidth: 1))
//                    .frame(width: 146, height: 146)
//                    .clipShape(Circle())
//                    .shadow(color: Color.white, radius: 5)
//                    .padding(.vertical, 20)
                
//                Divider()
//                    .background(Color.white)
//                    .frame(width: 300)
                
                
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
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFact1)
                                .font(.custom("Montserrat", size: 9))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            }.frame(width: 90) // fin fun fact 1
                        
                        Spacer()
                        
                        // FUN FACT 2
                        VStack {
                            Image(systemName: collectionCardBack.cardFunFactIcon2)
                                .font(.system(size: 25))
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFactName2)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFact2)
                                .font(.custom("Montserrat", size: 9))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            }.frame(width: 90) // fin fun fact 2
                        
                        Spacer()
                        
                        // FUN FACT 3
                        VStack {
                            Image(systemName: collectionCardBack.cardFunFactIcon3)
                                .font(.system(size: 25))
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFactName3)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 1)
                            Text(collectionCardBack.cardFunFact3)
                                .font(.custom("Montserrat", size: 9))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            }.frame(width: 90) // fin fun fact 3
                        
                        Spacer()
                    
                    }.padding(.vertical, 5)
                    .frame(width: 300)// fin Hstack fun facts
                
                Divider()
                    .background(Color.white)
                    .frame(width: 300)
                
                
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
        CollectionCardBack(collectionCardBack: cardBack1)
            .preferredColorScheme(.dark)
    }
}
