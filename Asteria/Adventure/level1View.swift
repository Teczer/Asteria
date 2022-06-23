//
//  level1View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level1View: View {
    
    var body: some View {
        ZStack {
            
            // Level background
            Image("level1")
                .resizable()
                .scaledToFit()
                .clipped()
                .frame(height:650)
            //
            
            
            VStack {
                
                ZStack {
                    
                    /// **DOCUMENTATION pour LevelCircle**
                    ///  **levelStatus** peut avoir 3 valeurs :
                    ///      *"completed"*      niveaux déjà terminés
                    ///      *"unavailable"*     niveaux à venir (pas encore débloqués)
                    ///      *"new"*                prochain niveau à jouer (il ne doit y en avoir qu'un seul à tout moment)
                    ///  **circleSize** est une valeur Int entre 30 et 50 qui change la taille du point
                    
                    LevelCircle(levelStatus: "completed", circleSize: 40)
                        .position(x: 75, y: 400)
                    
                    LevelCircle(levelStatus: "completed", circleSize: 30)
                        .position(x: 150, y: 340)

                    LevelCircle(levelStatus: "new", circleSize: 30)
                        .position(x: 225, y: 300)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 30)
                        .position(x: 290, y: 250)
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 50)
                        .position(x: 270, y: 185)
                    
                    // Level title
                    VStack(alignment: .trailing, spacing:5) {
                        Text("Niveau 1".uppercased())
                            .font(.custom("Montserrat", size: 15))
                            .foregroundColor(Color("LavenderBlush"))
                            .fontWeight(.bold)
                            .tracking(3)
                            .offset(x:-3)
                        Text("Autour de la Terre".uppercased())
                            .font(.custom("Montserrat", size: 22))
                            .foregroundColor(Color("LavenderBlush"))
                            .fontWeight(.light)
                            .tracking(8)
                    }
                    .multilineTextAlignment(.trailing)
                    .shadow(color: Color("OxfordBlue"), radius: 128)
                    .frame(width:200)
                    .position(x: 240, y: 520)
                    //
                    
                }
                
            }
            .frame(height:650)
            .clipped()
        }
    }
}

struct level1View_Previews: PreviewProvider {
    static var previews: some View {
        level1View()
    }
}
