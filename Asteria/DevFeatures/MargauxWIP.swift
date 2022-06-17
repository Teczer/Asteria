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
                Text("T I T R E")
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                        
                ZStack {
                    Circle()
                        .background(Color("OxfordBlue"))
                            
                    Text("1")
                        }
                        
                    } // fin Vstack
                    
                } // fin Zstack
    }
}

struct MargauxWIP_Previews: PreviewProvider {
    static var previews: some View {
        MargauxWIP()
    }
}
