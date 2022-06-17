//
//  MehdiWIP.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct MehdiWIP: View {
    var body: some View {
        VStack {
            CustomButton(colorOfButton: "pink", textInButton: "button")
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
                .frame(width: 280, height: 50)
                .foregroundColor(Color("CarnationPink"))
                .overlay(
                    Text(textInButton)
                        .foregroundColor(Color("SpaceCadet"))
                )
        } else if colorOfButton == "blue" {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 280, height: 50)
                .foregroundColor(Color("SpaceCadet"))
                .overlay(
                    Text(textInButton)
                        .foregroundColor(Color("LavenderBlush"))
                )
        } else if colorOfButton == "white" {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 280, height: 50)
                .foregroundColor(.white)
                .overlay(
                    Text(textInButton)
                        .foregroundColor(Color("OxfordBlue"))
                )
        }
    }
}

