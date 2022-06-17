//
//  EllanaWIP.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct EllanaWIP: View {
    var body: some View {
        ZStack{
            VStack(){
                ZStack(){
                    Color("LavenderBlush")
                        .frame(width: 243, height: 5)
                        .opacity(0.5)
                    
                    HStack(){
                        
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color("LavenderBlush"))
                        Spacer()
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color("LavenderBlush"))
                        Spacer()
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color("LavenderBlush"))
                        Spacer()
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color("LavenderBlush"))
                        Spacer()
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color("LavenderBlush"))
                        
                    }.padding(70)
                }
                Spacer()
            }
            Text("Question  sur 5")
                
        }
    }
}

struct EllanaWIP_Previews: PreviewProvider {
    static var previews: some View {
        EllanaWIP()
            .preferredColorScheme(.dark)
    }
}
