//
//  ConnexionTitleItemView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct ConnexionTitleItemView: View {
    var body: some View {
            Text("CONNEXION")
                .foregroundColor(.white)
                .font(.custom("Montserrat", size: 20))
            .tracking(5)
        
    }
}

struct ConnexionTitleItemView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionTitleItemView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}
