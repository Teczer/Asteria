//
//  SignUpItemView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct SignUpItemView: View {
    let objectText: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 280, height: 50)
                .foregroundColor(.white)
            Text(objectText)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .frame(width: 255, height: 50)
            
        }
        
    }
}

struct SignUpItemView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpItemView(objectText: "Connexion")
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
