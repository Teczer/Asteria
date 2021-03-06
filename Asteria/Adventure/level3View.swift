//
//  level3View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level3View: View {
    
    // Level height here!!
    private let levelHeight : CGFloat = 550
    
    @StateObject var viewRouter: ViewRouter
    @AppStorage("levelProgression") var levelProgression:Int = 0
    
    var body: some View {
        ZStack {
            
            // Level background
            Image("level3")
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
                        VStack(alignment: .trailing, spacing:5) {
                            Text("Niveau 3".uppercased())
                                .font(.custom("Montserrat", size: 15))
                                .foregroundColor(Color("LavenderBlush"))
                                .fontWeight(.bold)
                                .tracking(3)
                            Text("Galaxies".uppercased())
                                .font(.custom("Montserrat", size: 22))
                                .foregroundColor(Color("LavenderBlush"))
                                .fontWeight(.light)
                                .tracking(8)
                        }
                        .multilineTextAlignment(.trailing)
                    }
                    .frame(width:270, height:90)
                    .position(x: 260, y: 440)
                    //
                    
                    
                    
                    /// **DOCUMENTATION pour LevelCircle**
                    ///  **levelStatus** peut avoir 3 valeurs :
                    ///      *"completed"*      niveaux déjà terminés
                    ///      *"unavailable"*     niveaux à venir (pas encore débloqués)
                    ///      *"new"*                prochain niveau à jouer (il ne doit y en avoir qu'un seul à tout moment)
                    ///  **circleSize** est une valeur entre 40 et 60 qui change la taille du point
                    
                    
                    // cercles, de haut en bas
                    
                    LevelCircle(
                        levelStatus: levelProgression < 14 ? "unavailable" : (levelProgression > 14 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzGalaxies05,
                        levelId: 15,
                        viewRouter: viewRouter
                    )
                        .position(x: 85, y: 55)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 13 ? "unavailable" : (levelProgression > 13 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzGalaxies04,
                        levelId: 14,
                        viewRouter: viewRouter
                    )
                        .position(x: 96, y: 160)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 12 ? "unavailable" : (levelProgression > 12 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzGalaxies03,
                        levelId: 13,
                        viewRouter: viewRouter
                    )
                        .position(x: 90, y: 265)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 11 ? "unavailable" : (levelProgression > 11 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzGalaxies02,
                        levelId: 12,
                        viewRouter: viewRouter
                    )
                        .position(x: 95, y: 375)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 10 ? "unavailable" : (levelProgression > 10 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzGalaxies01,
                        levelId: 11,
                        viewRouter: viewRouter
                    )
                        .position(x: 80, y: 480)
                    
                }
                
            }
        }
        .frame(height:levelHeight)
        .clipped()
    }
}

struct level3View_Previews: PreviewProvider {
    static var previews: some View {
        level3View(viewRouter: ViewRouter())
    }
}
