//
//  TutoView.swift
//  Asteria
//
//  Created by apprenant70 on 20/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text

struct TutoView: View {
    var body: some View {
        ZStack {
            Color("CyberGrape")
                .ignoresSafeArea()
            VStack {
                Image("tutoscreen02")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                Spacer()
                    .frame(height:220)
            }
            VStack {
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(
                            LinearGradient(gradient: Gradient(stops: [
                                Gradient.Stop(color: Color("OxfordBlue").opacity(0), location: 0),
                                Gradient.Stop(color: Color("OxfordBlue"), location: 0.22),
                            ]), startPoint: .top, endPoint: .bottom)
                        )
                        .ignoresSafeArea()
                    HStack {
                        Image(systemName: "chevron.compact.left")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color("LavenderBlush").opacity(0.5))
                            .frame(width:10)
                            .padding()
                        Spacer()
                        Text("Bienvenue sur Asteria !\r\rIci, le but est d’en apprendre plus sur l’Univers, ce monde **lointain et mystérieux** qui nous entoure...")
                            .multilineTextAlignment(.center)
                            .frame(width:180)
                        Spacer()
                        Image(systemName: "chevron.compact.right")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color("LavenderBlush").opacity(0.5))
                            .frame(width:10)
                            .padding()
                    }
                }
                .frame(height:300)
            }
        }
    }
}

struct TutoView_Previews: PreviewProvider {
    static var previews: some View {
        TutoView()
            .preferredColorScheme(.dark)
    }
}
