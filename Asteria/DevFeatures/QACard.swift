//
//  QACard.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text

// sample values
let questionValue = """
La Lune est un satellite de la planète...
"""
let questionAnswer1 = "Jupiter"
let questionAnswer2 = "Terre"
let questionAnswer3 = "Mars"
let questionAnswer4 = "Ce n'est pas un satellite"

struct QACard: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("CyberGrape"), Color("SpaceCadet")]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width:300, height:600)
                .cornerRadius(24)
                .shadow(color: .white.opacity(0.8), radius: 32)
            
            QACardContent()
                .frame(width:300, height:600)
        }
    }
}

struct QACardContent: View {
    var body: some View {
        VStack(alignment:.center) {
            Spacer()
                .frame(height:15)
            Text("QUESTION")
                .font(.custom("Montserrat", size: 15))
                .fontWeight(.light)
                .tracking(5)
                .frame(height:30)
            Rectangle()
                .fill(.black)
                .frame(height:200)
            Text(questionValue)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .frame(width:270, height:145)
            VStack {
                HStack {
                    AnswerButton(selectedButton: false, textInButton: questionAnswer1)
                    Spacer()
                        .frame(width:15)
                    AnswerButton(selectedButton: false, textInButton: questionAnswer2)
                }
                Spacer()
                HStack {
                    AnswerButton(selectedButton: false, textInButton: questionAnswer3)
                    Spacer()
                        .frame(width:15)
                    AnswerButton(selectedButton: false, textInButton: questionAnswer4)
                }
            }
            .frame(height:125)
            Spacer()
        }
    }
}

struct QACard_Previews: PreviewProvider {
    static var previews: some View {
        QACard()
            .preferredColorScheme(.dark)
    }
}
