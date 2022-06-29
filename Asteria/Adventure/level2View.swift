//
//  level2View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level2View: View {
    
    // Level height here!!
    private let levelHeight : CGFloat = 550
    
    @StateObject var viewRouter: ViewRouter
    @AppStorage("levelProgression") var levelProgression:Int = 0
    
    var body: some View {
        ZStack {
            
            // Level background
            Image("level2")
                .resizable()
                .scaledToFill()
                .frame(height:levelHeight)
                .clipped()
            //
            
            
            VStack {
                
                ZStack {
                    
                    // Level title
                    ZStack {
                        Color("LavenderBlush").opacity(0.1)
                            .blur(radius: 25)
                        VStack(alignment: .leading, spacing:5) {
                            Text("Niveau 2".uppercased())
                                .font(.custom("Montserrat", size: 15))
                                .foregroundColor(Color("LavenderBlush"))
                                .fontWeight(.bold)
                                .tracking(3)
                            Text("Phénomènes observables".uppercased())
                                .font(.custom("Montserrat", size: 22))
                                .foregroundColor(Color("LavenderBlush"))
                                .fontWeight(.light)
                                .tracking(8)
                        }
                        .multilineTextAlignment(.leading)
                    }
                    .frame(width:270, height:90)
                    .position(x: 150, y: 430)
                    //
                    
                    
                    
                    /// **DOCUMENTATION pour LevelCircle**
                    ///  **levelStatus** peut avoir 3 valeurs :
                    ///      *"completed"*      niveaux déjà terminés
                    ///      *"unavailable"*     niveaux à venir (pas encore débloqués)
                    ///      *"new"*                prochain niveau à jouer (il ne doit y en avoir qu'un seul à tout moment)
                    ///  **circleSize** est une valeur entre 40 et 60 qui change la taille du point
                    ///  **questionSerieCurrent: quizzTheme01** pour le thème et la série du quizz

                    
                    // cercles, de haut en bas
                    
                    LevelCircle(
                        levelStatus: levelProgression < 9 ? "unavailable" : (levelProgression > 9 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire02,
                        levelId: 10,
                        viewRouter: viewRouter
                    )
                        .position(x: 100, y: 55)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 8 ? "unavailable" : (levelProgression > 8 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire02,
                        levelId: 9,
                        viewRouter: viewRouter
                    )
                        .position(x: 185, y: 155)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 7 ? "unavailable" : (levelProgression > 7 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire02,
                        levelId: 8,
                        viewRouter: viewRouter
                    )
                        .position(x: 265, y: 250)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 6 ? "unavailable" : (levelProgression > 6 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire02,
                        levelId: 7,
                        viewRouter: viewRouter
                    )
                        .position(x: 320, y: 360)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 5 ? "unavailable" : (levelProgression > 5 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire02,
                        levelId: 6,
                        viewRouter: viewRouter
                    )
                        .position(x: 335, y: 480)
                    
                }
                
            }
        }
        .frame(height:levelHeight)
        .clipped()
    }
}

struct level2View_Previews: PreviewProvider {
    static var previews: some View {
        level2View(viewRouter: ViewRouter())
    }
}
