//
//  SignWithItemView.swift
//  Asteria
//
//  Created by Apprenant 67 on 20/06/2022.
//

import SwiftUI

struct SignWithItemView: View {
    var body: some View {
        AppleItem()
        GoogleItem()
    }
}

struct SignWithItemView_Previews: PreviewProvider {
    static var previews: some View {
        SignWithItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct AppleItem: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.black)
            .frame(width: 280, height: 57)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color("socialstrokecolor"), lineWidth: 2))
            .overlay(
                HStack(alignment: .center, spacing: 0, content: {
                    Image("applelogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45)
                    Text("Continuer avec Apple")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.custom("Montserrat", size: 14))
                        .tracking(2)
                        .frame(width: 197, height: 17)
                    Spacer()
                        .frame(width: 15)
                })
            )
    }
}

struct GoogleItem: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color("googlebackgroundcolor"))
            .frame(width: 280, height: 57)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color("socialstrokecolor"), lineWidth: 2))
            .overlay(
                HStack(alignment: .center, spacing: 5, content: {
                    Image("googlelogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text("Continuer avec Google")
                        .foregroundColor(Color("socialstrokecolor"))
                        .fontWeight(.bold)
                        .font(.custom("Montserrat", size: 14))
                        .tracking(2)
                        .frame(width: 207, height: 17)
                })
            )
    }
}
