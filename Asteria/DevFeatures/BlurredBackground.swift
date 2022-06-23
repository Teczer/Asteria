//
//  BlurredBackground.swift
//  Asteria
//
//  Created by apprenant70 on 23/06/2022.
//

import SwiftUI

struct BlurredBackground: View {
    
    let name : String
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image(name)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .blur(radius: 3)
            }
            .ignoresSafeArea()
            Color("OxfordBlue").opacity(0.6)
                .ignoresSafeArea()
        }
    }
}

struct BlurredBackground_Previews: PreviewProvider {
    static var previews: some View {
        BlurredBackground(name: "soleil")
    }
}
