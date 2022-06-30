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
    @EnvironmentObject var signUpVM: SignUpViewModel

    var body: some View {
        if let user = signUpVM.user {
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
                        levelStatus: user.levelprogression < 9 ? "unavailable" : (user.levelprogression > 9 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzPhenomenesObservables05,
                        levelId: 10,
                        viewRouter: viewRouter
                    )
                        .position(x: 100, y: 55)
                    
                    LevelCircle(
                        levelStatus: user.levelprogression < 8 ? "unavailable" : (user.levelprogression > 8 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzPhenomenesObservables04,
                        levelId: 9,
                        viewRouter: viewRouter
                    )
                        .position(x: 185, y: 155)
                    
                    LevelCircle(
                        levelStatus: user.levelprogression < 7 ? "unavailable" : (user.levelprogression > 7 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzPhenomenesObservables03,
                        levelId: 8,
                        viewRouter: viewRouter
                    )
                        .position(x: 265, y: 250)
                    
                    LevelCircle(
                        levelStatus: user.levelprogression < 6 ? "unavailable" : (user.levelprogression > 6 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzPhenomenesObservables02,
                        levelId: 7,
                        viewRouter: viewRouter
                    )
                        .position(x: 320, y: 360)
                    
                    LevelCircle(
                        levelStatus: user.levelprogression < 5 ? "unavailable" : (user.levelprogression > 5 ? "completed" : "new"),
                        circleSize: 40,
                        questionSerieCurrent: quizzPhenomenesObservables01,
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
}

struct level2View_Previews: PreviewProvider {
    static var previews: some View {
        level2View(viewRouter: ViewRouter())
    }
}
