//
//  level1View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level1View: View {
    
    // Level height here!!
    private let levelHeight : CGFloat = 640
    
    @StateObject var viewRouter: ViewRouter
    @AppStorage("levelProgression") var levelProgression:Int = 0
    
    var body: some View {
        ZStack {
            
            // Level background
            Image("level1")
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
                            Text("Niveau 1".uppercased())
                                .font(.custom("Montserrat", size: 15))
                                .foregroundColor(Color("LavenderBlush"))
                                .fontWeight(.bold)
                                .tracking(3)
                            Text("Autour de la Terre".uppercased())
                                .font(.custom("Montserrat", size: 22))
                                .foregroundColor(Color("LavenderBlush"))
                                .fontWeight(.light)
                                .tracking(8)
                        }
                        .multilineTextAlignment(.trailing)
                    }
                    .frame(width:270, height:90)
                    .position(x: 240, y: 450)
                    //
                    
                    Image(systemName: "chevron.up")
                        .font(.system(size: 50))
                        .foregroundColor(Color("LavenderBlush").opacity(0.5))
                        .position(x: 50, y: 20)
                    
                    
                    /// **DOCUMENTATION pour LevelCircle**
                    ///  **levelStatus** peut avoir 3 valeurs :
                    ///      *"completed"*      niveaux déjà terminés
                    ///      *"unavailable"*     niveaux à venir (pas encore débloqués)
                    ///      *"new"*                prochain niveau à jouer (il ne doit y en avoir qu'un seul à tout moment)
                    ///  **circleSize** est une valeur entre 40 et 60 qui change la taille du point
                    ///  **questionSerieCurrent: quizzTheme01** pour le thème et la série du quizz
                    
                    // cercles, de haut en bas
                    
                    LevelCircle(
                        levelStatus: levelProgression < 4 ? "unavailable" : (levelProgression > 4 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire05,
                        levelId: 5,
                        viewRouter: viewRouter
                    )
                        .position(x: 310, y: 45)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 3 ? "unavailable" : (levelProgression > 3 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire04,
                        levelId: 4,
                        viewRouter: viewRouter
                    )
                        .position(x: 290, y: 135)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 2 ? "unavailable" : (levelProgression > 2 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire03,
                        levelId: 3,
                        viewRouter: viewRouter
                    )
                        .position(x: 245, y: 220)
                    
                    LevelCircle(
                        levelStatus: levelProgression < 1 ? "unavailable" : (levelProgression > 1 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzSystemesolaire02,
                        levelId: 2,
                        viewRouter: viewRouter
                    )
                        .position(x: 190, y: 300)
                    
                    LevelCircle(
                        levelStatus: levelProgression == 0 ? "new" : "completed",
                        circleSize: 60,
                        questionSerieCurrent: quizzSystemesolaire01,
                        levelId: 1,
                        viewRouter: viewRouter
                    )
                        .position(x: 110, y: 380)
                    
                }
            }
        }
        .frame(height:levelHeight)
        .clipped()
        
    }
}

struct level1View_Previews: PreviewProvider {
    static var previews: some View {
        level1View(viewRouter: ViewRouter())
    }
}
