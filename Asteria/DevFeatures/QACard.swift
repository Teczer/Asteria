//
//  QACard.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text

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
                .shadow(color: Color("LavenderBlush").opacity(0.5), radius: 16)
            
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
                .foregroundColor(Color("LavenderBlush"))
                .tracking(5)
                .frame(height:30)
            Image(quizz.photoQuestion)
                .resizable()
                .scaledToFill()
                .frame(width:300, height:200)
                .clipped()
            Text(quizz.questionValue)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(Color("LavenderBlush"))
                .multilineTextAlignment(.center)
                .frame(width:270, height:145)
            VStack {
                HStack {
                    AnswerButton(selectedButton: false, textInButton: quizz.questionAnswer[0])
                    NavigationLink(destination: {VeroWIP()}) {}
                    Spacer()
                        .frame(width:15)
                    AnswerButton(selectedButton: false, textInButton: quizz.questionAnswer[1])
                    NavigationLink(destination: {VeroWIP()}) {}
                }
                Spacer()
                HStack {
                    AnswerButton(selectedButton: false, textInButton: quizz.questionAnswer[2])
                    NavigationLink(destination: {VeroWIP()}) {}
                    Spacer()
                        .frame(width:15)
                    AnswerButton(selectedButton: false, textInButton: quizz.questionAnswer[3])
                    NavigationLink(destination: {VeroWIP()}) {}
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
