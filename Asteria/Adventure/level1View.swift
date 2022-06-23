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
            
            
            Circle()
                .fill(Color("OrchidCrayola").opacity(0.6))
                .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                .frame(width: 50, height: 50)
                .shadow(color: Color("OrchidCrayola"), radius: 5)
            
            
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
