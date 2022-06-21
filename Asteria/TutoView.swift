//
//  Tuto.swift
//  Asteria
//
//  Created by apprenant70 on 21/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text


struct TutoView: View {
    
    @State private var tutoIndex = 0
    let tutoText : [LocalizedStringKey] = ["Bienvenue sur Asteria !\r\rIci, le but est d’en apprendre plus sur l’Univers, ce monde **lointain et mystérieux** qui nous entoure...", "**Progresse** dans le mode Aventure sur la carte de l'Univers...", "**Répond** à des questions et améliore tes connaissances...", "...et **remporte** de magnifiques cartes à collectionner !"]
    
    var body: some View {
        ZStack {
            
            // background starting from here
            
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            Color("OxfordBlue").opacity(0.3)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(stops: [
                            Gradient.Stop(color: Color("OxfordBlue").opacity(0), location: 0),
                            Gradient.Stop(color: Color("OxfordBlue"), location: 0.22),
                        ]), startPoint: .top, endPoint: .bottom)
                    )
                    .ignoresSafeArea()
                    .frame(height:300)
            }
            
            // carousel starting from here
            
            VStack {
                TabView(selection: $tutoIndex) {
                    ForEach((0..<4), id: \.self) { index in
                        
                        if index == 0 {
                            VStack {
                                Image("tutoscreen\(index)")
                                Spacer()
                                HStack {
                                    Text(tutoText[index])
                                        .frame(width: 220)
                                }
                                .frame(height: 200)
                            }
                        }
                        
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                HStack {
                    ForEach((0..<4), id: \.self) { index in
                        Circle()
                            .fill(index == self.tutoIndex ? Color("LavenderBlush") : Color("LavenderBlush").opacity(0.5))
                            .frame(height: 5)
                    }
                }
                .frame(width: 80)
                .padding()
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
