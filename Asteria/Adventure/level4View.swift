//
//  level4View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level4View: View {
    
    // Level height here!!
    private let levelHeight : CGFloat = 550
    
    @StateObject var viewRouter: ViewRouter
    @EnvironmentObject var signUpVM: SignUpViewModel
    
    var body: some View {
        if let user = signUpVM.user {
            ZStack {
                
                // Level background
                Image("level4")
                    .resizable()
                    .scaledToFill()
                    .frame(height:levelHeight)
                    .clipped()
                //
                
                
                VStack {
                    
                    ZStack {
                        
                        // Level title
                        ZStack {
                            Color.black.opacity(0.8)
                                .blur(radius: 20)
                            VStack(alignment: .trailing, spacing:5) {
                                Text("Niveau 4".uppercased())
                                    .font(.custom("Montserrat", size: 15))
                                    .foregroundColor(Color("LavenderBlush"))
                                    .fontWeight(.bold)
                                    .tracking(3)
                                Text("Astronautes célèbres".uppercased())
                                    .font(.custom("Montserrat", size: 22))
                                    .foregroundColor(Color("LavenderBlush"))
                                    .fontWeight(.light)
                                    .tracking(8)
                            }
                            .multilineTextAlignment(.trailing)
                        }
                        .frame(width:270, height:90)
                        .position(x: 230, y: 440)
                        //
                        
                        
                        
                        /// **DOCUMENTATION pour LevelCircle**
                        ///  **levelStatus** peut avoir 3 valeurs :
                        ///      *"completed"*      niveaux déjà terminés
                        ///      *"unavailable"*     niveaux à venir (pas encore débloqués)
                        ///      *"new"*                prochain niveau à jouer (il ne doit y en avoir qu'un seul à tout moment)
                        ///  **circleSize** est une valeur entre 40 et 60 qui change la taille du point
                        
                        
                        // cercles, de haut en bas
                        
                        LevelCircle(
                            levelStatus: user.levelprogression < 19 ? "unavailable" : (user.levelprogression > 19 ? "completed" : "new"),
                            circleSize: 40,
                            questionSerieCurrent: quizzAstronautes05,
                            levelId: 20,
                            viewRouter: viewRouter
                        )
                        .position(x: 85, y: 55)
                        
                        LevelCircle(
                            levelStatus: user.levelprogression < 18 ? "unavailable" : (user.levelprogression > 18 ? "completed" : "new"),
                            circleSize: 40,
                            questionSerieCurrent: quizzAstronautes04,
                            levelId: 19,
                            viewRouter: viewRouter
                        )
                        .position(x: 132, y: 170)
                        
                        LevelCircle(
                            levelStatus: user.levelprogression < 17 ? "unavailable" : (user.levelprogression > 17 ? "completed" : "new"),
                            circleSize: 40,
                            questionSerieCurrent: quizzAstronautes03,
                            levelId: 18,
                            viewRouter: viewRouter
                        )
                        .position(x: 140, y: 272)
                        
                        LevelCircle(
                            levelStatus: user.levelprogression < 16 ? "unavailable" : (user.levelprogression > 16 ? "completed" : "new"),
                            circleSize: 40,
                            questionSerieCurrent: quizzAstronautes02,
                            levelId: 17,
                            viewRouter: viewRouter
                        )
                        .position(x: 90, y: 370)
                        
                        LevelCircle(
                            levelStatus: user.levelprogression < 15 ? "unavailable" : (user.levelprogression > 15 ? "completed" : "new"),
                            circleSize: 40,
                            questionSerieCurrent: quizzAstronautes01,
                            levelId: 16,
                            viewRouter: viewRouter
                        )
                        .position(x: 60, y: 480)
                        
                    }
                    
                }
            }
            .frame(height:levelHeight)
            .clipped()
        }
    }
}

struct level4View_Previews: PreviewProvider {
    static var previews: some View {
        level4View(viewRouter: ViewRouter())
    }
}
