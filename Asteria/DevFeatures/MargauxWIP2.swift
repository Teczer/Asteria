//
//  MargauxWIP2.swift
//  Asteria
//
//  Created by Apprenant 87 on 17/06/2022.
//

import SwiftUI

struct MargauxWIP2: View {
    var body: some View {
        
        ZStack {
                    
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 2)
                .frame(width: 299, height: 597)
            
            VStack {
                
                Text("T I T R E")
                    .font(.custom("Montserrat", size: 30))
                    .fontWeight(.light)
                
                Divider()
                    .background(Color.white)
                    .frame(width: 299)
                
                Image("card-background-image")
                    .resizable()
                    .scaledToFill()
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .frame(width: 146, height: 146)
                    .clipShape(Circle())
                
                Divider()
                    .background(Color.white)
                    .frame(width: 299)
                
                
                    // HSTACK FUN FACTS
                    HStack {
                        Spacer()
                        
                        // FUN FACT 1
                        VStack {
                            Image(systemName: "bolt.circle.fill")
                                .font(.system(size: 25))
                            Text("Spec 1 :")
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                            Text("""
                                 Chiffre
                                 ou fun fact
                                 """)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            } // fin fun fact 1
                        
                        Spacer()
                        
                        // FUN FACT 2
                        VStack {
                            Image(systemName: "bolt.circle.fill")
                                .font(.system(size: 25))
                            Text("Spec 2 :")
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                            Text("""
                                 Chiffre
                                 ou fun fact
                                 """)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            } // fin fun fact 2
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "bolt.circle.fill")
                                .font(.system(size: 25))
                            Text("Spec 3 :")
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                            Text("""
                                 Chiffre
                                 ou fun fact
                                 """)
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            } // fin fun fact 3
                        
                        Spacer()
                    
                    } // fin Hstack fun facts
                
            } // fin Vstack

        } // fin Zstack
        
    }
}

struct MargauxWIP2_Previews: PreviewProvider {
    static var previews: some View {
        MargauxWIP2()
            .preferredColorScheme(.dark)
    }
}
