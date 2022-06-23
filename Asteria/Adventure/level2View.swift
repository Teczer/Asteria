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
                    
                    
                    // cercles, de haut en bas
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 60)
                        .position(x: 100, y: 55)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 40)
                        .position(x: 185, y: 155)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 45)
                        .position(x: 265, y: 250)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 40)
                        .position(x: 320, y: 360)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 45)
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
        level2View()
    }
}
