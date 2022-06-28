//
//  LevelCircle.swift
//  Asteria
//
//  Created by apprenant70 on 23/06/2022.
//

import SwiftUI

struct LevelCircle: View {
    
    /// **DOCUMENTATION pour LevelCircle**
    ///  **levelStatus** peut avoir 3 valeurs :
    ///      *"completed"*      niveaux déjà terminés
    ///      *"unavailable"*     niveaux à venir (pas encore débloqués)
    ///      *"new"*                prochain niveau à jouer (il ne doit y en avoir qu'un seul à tout moment)
    ///  **circleSize** est une valeur entre 40 et 60 qui change la taille du point
    ///  **questionSerieCurrent: quizzTheme01** pour le thème et la série du quizz
    
    let levelStatus : String
    let circleSize : CGFloat
    let questionSerieCurrent : [Questions]
    
    var body: some View {
        
        if levelStatus == "completed" {
            NavigationLink (destination: QuizzView(questionSerieCurrent: questionSerieCurrent)) {
                ZStack {
                    Circle()
                        .fill(Color("CarnationPink").opacity(0.9))
                        .overlay(Circle().stroke(Color("CarnationPink"), lineWidth: 2))
                        .frame(width: circleSize, height: circleSize)
                        .shadow(color: Color("CarnationPink"), radius: 5)
                    Image(systemName: "checkmark")
                        .font(.system(size: 22))
                }
            }
        }
        
        else if levelStatus == "unavailable" {
            Circle()
                .fill(Color("OrchidCrayola").opacity(0.5))
                .overlay(Circle().stroke(Color("CarnationPink").opacity(0.8), lineWidth: 2))
                .frame(width: circleSize, height: circleSize)
                .shadow(color: Color("OrchidCrayola"), radius: 5)
        }
        
        else if levelStatus == "new" {
            NavigationLink (destination: QuizzView(questionSerieCurrent: questionSerieCurrent)) {
                Circle()
                    .fill(Color("LavenderBlush").opacity(0.9))
                    .overlay(Circle().stroke(Color("LavenderBlush"), lineWidth: 2))
                    .frame(width: circleSize, height: circleSize)
                    .shadow(color: Color("LavenderBlush"), radius: 10)
            }
        }
        
        else {
            Text("Erreur : LevelCircle a reçu une valeur inattendue")
                .font(.system(size: 10))
        }
        
    }
}

struct LevelCircle_Previews: PreviewProvider {
    static var previews: some View {
        LevelCircle(levelStatus: "completed", circleSize: 40, questionSerieCurrent: quizzSystemesolaire01)
    }
}
