//
//  QACard.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text

// sample values
let answerName = "Terre"
let answerExplanation: LocalizedStringKey = """
La **Lune**, aussi connue sous le nom de **Terre I**, est le seul satellite de la planète Terre.
"""

struct QACardAnswer: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("OrchidCrayola"), Color("PurpleMountain")]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width:300, height:600)
                .cornerRadius(24)
                .shadow(color: .white.opacity(0.8), radius: 32)
            
            QACardAnswerContent()
                .frame(width:300, height:600)
        }
    }
}

struct QACardAnswerContent: View {
    var body: some View {
        VStack(alignment:.center) {
            Spacer()
                .frame(height:15)
            Text("RÉPONSE")
                .font(.custom("Montserrat", size: 15))
                .fontWeight(.light)
                .tracking(5)
                .frame(height:30)
            Rectangle()
                .fill(.black)
                .frame(height:200)
            Text(answerName.uppercased())
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .tracking(5)
                .multilineTextAlignment(.center)
                .frame(width:270, height:65)
            Text(answerExplanation)
                .font(.system(size: 16))
                .multilineTextAlignment(.center)
                .frame(width:270, height:150)
            CustomButton(colorOfButton: "blue", textInButton: "Continuer")
            Spacer()
        }
    }
}

struct QACardAnswer_Previews: PreviewProvider {
    static var previews: some View {
        QACardAnswer()
            .preferredColorScheme(.dark)
    }
}