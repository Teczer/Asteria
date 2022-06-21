//
//  QACard.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text

// sample values



struct QACardAnswer: View {
    let quizz: Questions
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("OrchidCrayola"), Color("PurpleMountain")]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width:300, height:600)
                .cornerRadius(24)
                .shadow(color: Color("LavenderBlush").opacity(0.5), radius: 16)

            QACardAnswerContent(quizz: Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La Lune, aussi connue sous le nom de Terre, est le seul satellite de la planète Terre."))
                .frame(width:300, height:600)
        }
    }
}

struct QACardAnswerContent: View {
    let quizz: Questions
    var body: some View {
        VStack(alignment:.center) {
            Spacer()
                .frame(height:15)
            Text("RÉPONSE")
                .font(.custom("Montserrat", size: 15))
                .fontWeight(.light)
                .foregroundColor(Color("LavenderBlush"))
                .tracking(5)
                .frame(height:30)
            Image(quizz.photoAnswer)
                .resizable()
                .scaledToFill()
                .frame(height:200)
                .clipped()
            Text(quizz.answerName.uppercased())
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .foregroundColor(Color("LavenderBlush"))
                .tracking(5)
                .multilineTextAlignment(.center)
                .frame(width:270, height:65)
            Text(quizz.answerExplanation)
                .font(.system(size: 16))
                .foregroundColor(Color("LavenderBlush"))
                .multilineTextAlignment(.center)
                .frame(width:270, height:150)
            CustomButton(colorOfButton: "blue", textInButton: "Continuer")
            Spacer()
        }
    }
}

struct QACardAnswer_Previews: PreviewProvider {
    static var previews: some View {
        QACardAnswer(quizz: Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La Lune, aussi connue sous le nom de Terre, est le seul satellite de la planète Terre."))
            .preferredColorScheme(.dark)
    }
}
