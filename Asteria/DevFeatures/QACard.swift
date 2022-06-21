//
//  QACard.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text

// sample values



struct QACard: View {
    let quizz: Questions
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("CyberGrape"), Color("SpaceCadet")]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width:300, height:600)
                .cornerRadius(24)
                .shadow(color: .white.opacity(0.8), radius: 32)
            
            QACardContent(quizz: Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La Lune, aussi connue sous le nom de Terre, est le seul satellite de la planète Terre."))
                .frame(width:300, height:600)
        }
    }
}

struct QACardContent: View {
    let quizz: Questions
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
            Text(quizz.questionValue)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .frame(width:270, height:145)
            VStack {
                HStack {
                    AnswerButton(selectedButton: false, textInButton: quizz.questionAnswer[0])
                    Spacer()
                        .frame(width:15)
                    AnswerButton(selectedButton: false, textInButton: quizz.questionAnswer[1])
                }
                Spacer()
                HStack {
                    AnswerButton(selectedButton: false, textInButton: quizz.questionAnswer[2])
                    Spacer()
                        .frame(width:15)
                    AnswerButton(selectedButton: false, textInButton: quizz.questionAnswer[3])
                }
            }
            .frame(height:125)
            Spacer()
        }
    }
}

struct QACard_Previews: PreviewProvider {
    static var previews: some View {
        QACard(quizz: Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La Lune, aussi connue sous le nom de Terre, est le seul satellite de la planète Terre."))
            .preferredColorScheme(.dark)
    }
}
