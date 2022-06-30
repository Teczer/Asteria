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
    @StateObject var viewRouter: ViewRouter

    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("OrchidCrayola"), Color("PurpleMountain")]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width:300, height:600)
                .cornerRadius(24)
                .shadow(color: Color("LavenderBlush").opacity(0.5), radius: 16)
            
            QACardAnswerContent(questionSerieCurrent: questionSerieCurrent, quizzController: quizzController, viewRouter: viewRouter)
                .frame(width:300, height:600)
        }
    }
}

struct QACardAnswerContent: View {
    
    var questionSerieCurrent: [Questions]
    @State var change: Bool = false
    @StateObject var quizzController : QuizzController
    @StateObject var viewRouter: ViewRouter

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
            Image(questionSerieCurrent[quizzController.questionNoCurrent-1].photoAnswer)
                .resizable()
                .scaledToFill()
                .frame(width:300, height:200)
                .clipped()
            Text(questionSerieCurrent[quizzController.questionNoCurrent-1].answerName.uppercased())
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(Color("LavenderBlush"))
                .tracking(5)
                .multilineTextAlignment(.center)
                .frame(width:270, height:55)
            Text(questionSerieCurrent[quizzController.questionNoCurrent-1].answerExplanation)
                .font(.system(size: 15))
                .foregroundColor(Color("LavenderBlush"))
                .multilineTextAlignment(.center)
                .frame(width:270, height:160)
            
            if quizzController.questionNoCurrent >= quizzController.questionNoTotal {
                NavigationLink (isActive: $change, destination: {QuizzEndingView(viewRouter: viewRouter, quizzController: quizzController)}) {}
            }
            Button(action: {
                if quizzController.questionNoCurrent >= quizzController.questionNoTotal {
                    self.change = true
                }
                if quizzController.questionNoCurrent < quizzController.questionNoTotal {
                    quizzController.nextQuestion = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        quizzController.questionNoCurrent += 1
                    }
                }
                print("\(quizzController.questionNoCurrent)")}, label: {                 CustomButton(colorOfButton: "blue", textInButton: "Continuer")}
            )
            Spacer()
        }
    }
}

struct QACardAnswer_Previews: PreviewProvider {
    static var previews: some View {
        QACardAnswer(questionSerieCurrent: quizzSystemesolaire01, quizzController: QuizzController(), viewRouter: ViewRouter())
            .preferredColorScheme(.dark)
    }
}
