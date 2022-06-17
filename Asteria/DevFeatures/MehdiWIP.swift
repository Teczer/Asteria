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
            ButtonEdit(textInButton: "Bouton", typeOfButton: false)
            ButtonEdit(textInButton: "Bouton", typeOfButton: true)
                .padding(.bottom)
            WhiteButton(textInButton: "Bouton")
            
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

struct WhiteButton: View {
    var textInButton : String
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .overlay(
                Text(textInButton)
                    .foregroundColor(Color("OxfordBlue"))
            )
    }
}

struct ButtonEdit: View {
    var textInButton : String
    var typeOfButton : Bool
    
    var body: some View {
        
        
        if typeOfButton == true {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 280, height: 50)
                .foregroundColor(Color("CarnationPink"))
                .overlay(
                    Text(textInButton)
                        .foregroundColor(Color("SpaceCadet"))
                )
        } else {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 280, height: 50)
                .foregroundColor(Color("SpaceCadet"))
                .overlay(
                    Text(textInButton)
                        .foregroundColor(Color("LavenderBlush"))
                )
        }
    }
}

