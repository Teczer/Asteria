//
//  level2View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level4View: View {
    
    // Level height here!!
    private let levelHeight : CGFloat = 550
    
    var body: some View {
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
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 60)
                        .position(x: 85, y: 55)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 40)
                        .position(x: 132, y: 170)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 45)
                        .position(x: 140, y: 272)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 40)
                        .position(x: 90, y: 370)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 40)
                        .position(x: 60, y: 480)
                    
                }
                
            }
        }
        .frame(height:levelHeight)
        .clipped()
    }
}

struct level4View_Previews: PreviewProvider {
    static var previews: some View {
        level4View()
    }
}
