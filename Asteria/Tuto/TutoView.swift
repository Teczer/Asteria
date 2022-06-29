//
//  Tuto.swift
//  Asteria
//
//  Created by apprenant70 on 21/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text


struct TutoView: View {
    
    // important data, do not remove!
    @Binding var endOnBoarding: Bool
    @Binding var login: String
    @State private var loginPhase: Bool = false
    @State private var tutoIndex = 0
    let tutoText : [LocalizedStringKey] = ["Bienvenue sur Asteria !\r\rIci, le but est d’en apprendre plus sur l’Univers, ce monde **lointain et mystérieux** qui nous entoure...", "**Progresse** dans le mode Aventure sur la carte de l'Univers...", "**Répond** à des questions et améliore tes connaissances...", "...et **remporte** de magnifiques cartes à collectionner !"]
    
    
    var body: some View {
        NavigationView {
            ZStack {
                
                // background starts here
                
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                Color("OxfordBlue").opacity(0.3)
                    .ignoresSafeArea()
                if loginPhase == true {
                    LoginView(endOnBoarding: $endOnBoarding, username: $login)
                } else {
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
                        .frame(height:320)
                }
                
                // carousel starts here
                
                VStack {
                    TabView(selection: $tutoIndex) {
                        ForEach((0..<4), id: \.self) { index in
                            
                            VStack {
                                Image("tutoscreen\(index)")
                                    .resizable()
                                    .scaledToFit()
                                    .ignoresSafeArea()
                                Spacer()
                                HStack {
                                    Image(systemName: tutoIndex<=0 ? "" : "chevron.compact.left")
                                        .foregroundColor(Color("LavenderBlush").opacity(0.5))
                                        .frame(width:25)
                                        .padding()
                                        .onTapGesture {
                                            tutoIndex -= 1
                                        }
                                    Spacer()
                                    Text(tutoText[index])
                                        .multilineTextAlignment(.center)
                                        .frame(width: 220)
                                    Spacer()
                                    Image(systemName: tutoIndex>=3 ? "" : "chevron.compact.right")
                                        .foregroundColor(Color("LavenderBlush").opacity(0.5))
                                        .frame(width:25)
                                        .padding()
                                        .onTapGesture {
                                            tutoIndex += 1
                                        }
                                    
                                }
                                .frame(height:150)
                                
                                if tutoIndex >= 3 {
                                    
                                    Button {
                                        loginPhase.toggle()
                                    } label: {
                                        CustomButton(colorOfButton: "blue", textInButton: "Commencer")
                                    }
                                
                                    
                                } else {
                                    Spacer()
                                        .frame(height: 50)
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
                .ignoresSafeArea()
            }
            }
        }
    }
}

struct TutoView_Previews: PreviewProvider {
    static var previews: some View {
        TutoView(endOnBoarding: .constant(false), login: .constant(""))
            .preferredColorScheme(.dark)
    }
}
