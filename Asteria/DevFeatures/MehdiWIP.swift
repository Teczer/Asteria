//
//  MehdiWIP.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct MehdiWIP: View {
    @State var change: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                CustomButton(colorOfButton: "blue", textInButton: "Connexion")
                
                
                
                
                NavigationLink(isActive: $change, destination: {VeroWIP()}) {
                    if change == false {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 280, height: 50)
                            .foregroundColor(Color("CarnationPink"))
                            .overlay(
                                Text("textInButton")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("SpaceCadet"))
                            )
                    } else {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 280, height: 50)
                            .foregroundColor(Color("CarnationPink"))
                            .overlay(
                                Text("textInButton")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("SpaceCadet"))
                            )
                        
                    }
                }
            }
        }
    }
}

struct MehdiWIP_Previews: PreviewProvider {
    static var previews: some View {
        MehdiWIP()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}

struct CustomButton: View {
    var colorOfButton : String
    var textInButton : String
    var body: some View {
        if colorOfButton == "pink" {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("CarnationPink"))
                .overlay(
                    Text(textInButton)
                        .fontWeight(.bold)
                        .foregroundColor(Color("SpaceCadet"))
                )
        } else if colorOfButton == "blue" {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("SpaceCadet"))
                .overlay(
                    Text(textInButton)
                        .fontWeight(.bold)
                        .foregroundColor(Color("LavenderBlush"))
                )
        } else if colorOfButton == "white" {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(.white)
                .overlay(
                    Text(textInButton)
                        .fontWeight(.bold)
                        .foregroundColor(Color("OxfordBlue"))
                )
        }
    }
}





