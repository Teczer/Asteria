//
//  level1View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level1View: View {
    
    // Level height here!!
    private let levelHeight : CGFloat = 550
    
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
                    
                    
                    // cercles, de haut en bas
                    
                    LevelCircle(levelStatus: "unavailable", circleSize: 60)
                        .position(x: 310, y: 65)
                    
                    LevelCircle(levelStatus: "new", circleSize: 40)
                        .position(x: 270, y: 185)
                    
                    LevelCircle(levelStatus: "completed", circleSize: 40)
                        .position(x: 210, y: 285)
                    
                    NavigationLink (destination: QuizzView(questionSerieCurrent: quizzSystemesolaire01)) {
                    LevelCircle(levelStatus: "completed", circleSize: 50)
                        .position(x: 110, y: 380)
                    }
                    
                }
            }
        }
        .frame(height:levelHeight)
        .clipped()
        
    }
}

struct level1View_Previews: PreviewProvider {
    static var previews: some View {
        level1View()
    }
}
