//
//  QACard.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown text formatting

struct QACard: View {
    var questionSerieCurrent: [Questions]
    @StateObject var quizzController : QuizzController

    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("CyberGrape"), Color("SpaceCadet")]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width:300, height:600)
                .cornerRadius(24)
                .shadow(color: Color("LavenderBlush").opacity(0.5), radius: 16)
            
            QACardContent(questionSerieCurrent: questionSerieCurrent, quizzController: quizzController)
                .frame(width:300, height:600)
        }
    }
}

struct QACardContent: View {
    var questionSerieCurrent: [Questions]
    @StateObject var quizzController : QuizzController
    var body: some View {
        VStack(alignment:.center) {
            Spacer()
                .frame(height:15)
            Text("Question".uppercased())
                .font(.custom("Montserrat", size: 15))
                .fontWeight(.light)
                .foregroundColor(Color("LavenderBlush"))
                .tracking(5)
                .frame(height:30)
            Image(questionSerieCurrent[0].photoQuestion)
                .resizable()
                .scaledToFill()
                .frame(width:300, height:200)
                .clipped()
            Text(questionSerieCurrent[0].questionValue)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(Color("LavenderBlush"))
                .multilineTextAlignment(.center)
                .frame(width:270, height:145)
            VStack {
                HStack {
                    AnswerButton(selectedButton: false, textInButton: questionSerieCurrent[0].questionAnswer[0], goodAnswer: questionSerieCurrent[0].goodAnswerNo,clicAnswer: 0, quizzController: quizzController)
                    NavigationLink(destination: {VeroWIP()}) {}
                    Spacer()
                        .frame(width:15)
                    AnswerButton(selectedButton: false, textInButton: questionSerieCurrent[0].questionAnswer[1], goodAnswer: questionSerieCurrent[0].goodAnswerNo,clicAnswer: 1, quizzController: quizzController)
                    NavigationLink(destination: {VeroWIP()}) {}
                }
                Spacer()
                HStack {
                    AnswerButton(selectedButton: false, textInButton: questionSerieCurrent[0].questionAnswer[2], goodAnswer: questionSerieCurrent[0].goodAnswerNo,clicAnswer: 2, quizzController: quizzController)
                    NavigationLink(destination: {VeroWIP()}) {}
                    Spacer()
                        .frame(width:15)
                    AnswerButton(selectedButton: false, textInButton: questionSerieCurrent[0].questionAnswer[3], goodAnswer: questionSerieCurrent[0].goodAnswerNo,clicAnswer: 3, quizzController: quizzController)
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
        QACard(questionSerieCurrent: quizzSystemesolaire01, quizzController: QuizzController())
            .preferredColorScheme(.dark)
    }
}
