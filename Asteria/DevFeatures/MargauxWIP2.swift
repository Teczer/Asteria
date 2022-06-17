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
                    
            Rectangle()
                .cornerRadius(20)
                .background(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
                .foregroundColor(Color("OxfordBlue"))
                .frame(width: 299, height: 597)
                .shadow(color: Color.white, radius: 10)
            
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
                    .padding(.vertical, 20)
                
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
                                .padding(.vertical, 1)
                            Text("Spec 1 :")
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                                .padding(.vertical, 1)
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
                                .padding(.vertical, 1)
                            Text("Spec 2 :")
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                                .padding(.vertical, 1)
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
                                .padding(.vertical, 1)
                            Text("Spec 3 :")
                                .font(.custom("Montserrat", size: 8))
                                .fontWeight(.semibold)
                                .padding(.vertical, 1)
                            Text("""
                                 Chiffre
                                 ou fun fact
                                 """)
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
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue placerat quam id blandit. Cras maximus tempor efficitur. Curabitur leo metus, porta vel blandit vitae, suscipit et ex. Etiam ac rutrum mauris, sed euismod magna. Sed a porta urna. Nullam vehicula fermentum facilisis. Pellentesque gravida, nisl a consectetur mattis, magna urna pretium elit, eget euismod enim sapien quis orci. Proin quis tellus eros.")
                    .font(.custom("Montserrat", size: 12))
                    .fontWeight(.light)
                    .frame(width: 260)
                    .padding(.top, 3)
                
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
