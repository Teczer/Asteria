//
//  TutoView.swift
//  Asteria
//
//  Created by apprenant70 on 20/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text

struct TutoView: View {
    
    var tutoScreenNo : Int = 0
    let tutoText : [LocalizedStringKey] = ["Bienvenue sur Asteria !\r\rIci, le but est d'en apprendre plus sur l'Univers, ce monde **lointain et mystérieux** qui nous entoure..."]
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                Color("OxfordBlue").opacity(0.3)
                    .ignoresSafeArea()
                VStack {
                    Image("tutoscreen02")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                    Spacer()
                        .frame(height:240)
                }
                VStack {
                    Spacer()
                    ZStack {
                        Rectangle()
                            .fill(
                                LinearGradient(gradient: Gradient(stops: [
                                    Gradient.Stop(color: Color("OxfordBlue").opacity(0), location: 0),
                                    Gradient.Stop(color: Color("OxfordBlue"), location: 0.25),
                                ]), startPoint: .top, endPoint: .bottom)
                            )
                            .ignoresSafeArea()
                        VStack {
                            Spacer()
                                .frame(height:40)
                            HStack {
                                Image(systemName: "chevron.compact.left")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color("LavenderBlush").opacity(0.5))
                                    .frame(width:10)
                                    .padding()
                                Spacer()
                                Text(tutoText[0])
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
                    }
                    .frame(height:330)
                }
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
