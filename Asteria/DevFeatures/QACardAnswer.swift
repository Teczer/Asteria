//
//  QACard.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown text formatting

struct QACardAnswer: View {
    var questionSerieCurrent: [Questions]
    @StateObject var quizzController : QuizzController
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("OrchidCrayola"), Color("PurpleMountain")]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width:300, height:600)
                .cornerRadius(24)
                .shadow(color: Color("LavenderBlush").opacity(0.5), radius: 16)
            
            QACardAnswerContent(questionSerieCurrent: questionSerieCurrent, quizzController: quizzController)
                .frame(width:300, height:600)
        }
    }
}

struct QACardAnswerContent: View {
    var questionSerieCurrent: [Questions]
    @StateObject var quizzController : QuizzController
    var body: some View {
        VStack(alignment:.center) {
            Spacer()
                .frame(height:15)
            Text("Réponse".uppercased())
                .font(.custom("Montserrat", size: 15))
                .fontWeight(.light)
                .foregroundColor(Color("LavenderBlush"))
                .tracking(5)
                .frame(height:30)
            Image(questionSerieCurrent[0].photoAnswer)
                .resizable()
                .scaledToFill()
                .frame(width:300, height:200)
                .clipped()
            Text(questionSerieCurrent[0].answerName.uppercased())
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .foregroundColor(Color("LavenderBlush"))
                .tracking(5)
                .multilineTextAlignment(.center)
                .frame(width:270, height:65)
            Text(questionSerieCurrent[0].answerExplanation)
                .font(.system(size: 16))
                .foregroundColor(Color("LavenderBlush"))
                .multilineTextAlignment(.center)
                .frame(width:270, height:150)
            Button(action: {
                if quizzController.questionNoCurrent < 3 {
                quizzController.nextQuestion = true
                quizzController.questionNoCurrent += 1
            }
                print("\(quizzController.questionNoCurrent)")}, label: {                 CustomButton(colorOfButton: "blue", textInButton: "Continuer")}
            )
//            Button {
//
//            } label: {
//                CustomButton(colorOfButton: "blue", textInButton: "Continuer")
//            }
//            .onTapGesture {
//                if quizzController.questionNoCurrent > 3 {
//                    quizzController.nextQuestion = true
//                    quizzController.questionNoCurrent += 1
//                }
//                print("tu marches ou pas")
//            }
            Spacer()
        }
    }
}

struct QACardAnswer_Previews: PreviewProvider {
    static var previews: some View {
        QACardAnswer(questionSerieCurrent: quizzSystemesolaire01, quizzController: QuizzController())
            .preferredColorScheme(.dark)
    }
}
