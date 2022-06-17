//
//  MargauxWIP.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct MargauxWIP: View {
    var body: some View {
        
        ZStack {
                    
            Image("card-background-image")
                .resizable()
                .scaledToFill()
                .frame(width: 299, height: 597)
                .clipped()
                .cornerRadius(20)

            VStack {
                Spacer()
                
                Text("T I T R E")
                    .font(.custom("Montserrat", size: 30))
                    .fontWeight(.light)
                  
                Spacer(minLength: 400)
                
                // ROND + CHIFFRE
                ZStack {
                    Circle()
                        .fill(Color("OxfordBlue"))
                        .frame(width: 40, height: 40)

                    Text("1")
                        .font(.custom("Montserrat", size: 24))
                        .fontWeight(.semibold)
                        } // fin rond + chiffre
                
                Text("C O L L E C T I O N")
                    .font(.custom("Montserrat", size: 15))
                    .fontWeight(.light)
                    .padding(.vertical, 1)
                        
                Text("NOM DE LA COLLECTION")
                    .font(.custom("Montserrat", size: 15))
                    .fontWeight(.semibold)
                
                Spacer()
                
                    } // fin Vstack
                    
                } // fin Zstack
    }
}

struct MargauxWIP_Previews: PreviewProvider {
    static var previews: some View {
        MargauxWIP()
            .preferredColorScheme(.dark)
    }
}
