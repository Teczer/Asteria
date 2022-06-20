//
//  NoSignItemView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct NoSignItemView: View {
    let objectText: String
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 280, height: 50)
            .foregroundColor(Color("SpaceCadet"))
            .overlay(
                Text(objectText)
                    .fontWeight(.bold)
                    .foregroundColor(Color("LavenderBlush"))
            )
    }
}

struct NoSignItemView_Previews: PreviewProvider {
    static var previews: some View {
        NoSignItemView(objectText: "Continuer sans s'identifier")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
