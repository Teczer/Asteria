//
//  ConnexionTitleItemView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct ConnexionTitleItemView: View {
    let objectText: String
    var body: some View {
        Text(objectText)
            .foregroundColor(.white)
            .font(.custom("Montserrat", size: 16))
            .tracking(5)
        
    }
}

struct ConnexionTitleItemView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionTitleItemView(objectText: "CONNEXION")
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}
