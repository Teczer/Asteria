//
//  QuizzView.swift
//  Asteria
//
//  Created by apprenant70 on 21/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown text formatting

struct QuizzView: View {
    
    @State private var rotationValue:Double = 0
    @State private var rotationAnswerValue:Double = 90
    @State private var displayAnswer:Bool = false
    
    
    var body: some View {
        ZStack {
            Color("OxfordBlue")
                .ignoresSafeArea()
            VStack {
                HStack(alignment:.top) {
                    Image(systemName: "xmark.square.fill")
                        .foregroundColor(Color("LavenderBlush").opacity(0.8))
                        .font(.system(size: 32))
                        .padding()
                    VStack(alignment: .trailing, spacing:0) {
                        ProgressionBar()
                            .padding()
                            .frame(height:35)
                        HStack(alignment: .bottom, spacing:3) {
                            Text("Question")
                                .font(.system(size: 12))
                                .foregroundColor(Color("LavenderBlush"))
                            Text("\(questionNoCurrent)")
                                .font(.system(size: 22))
                                .fontWeight(.black)
                                .foregroundColor(Color("LavenderBlush"))
                                .offset(y:2.2)
                            Text("sur \(questionNoTotal)")
                                .font(.system(size: 12))
                                .foregroundColor(Color("LavenderBlush"))
                        }
                        .padding(.horizontal)
                        .offset(y:-5)
                    }
                }
                Spacer()
                ZStack {
                    if displayAnswer == true {
                        QACardAnswer(quizz: Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La **Lune**, aussi connue sous le nom de **Terre I**, est le seul satellite de la planète Terre."))
                            .rotation3DEffect(.degrees(rotationAnswerValue), axis: (x: 0, y: 1, z: 0))
                    }
                    QACard(quizz: Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La **Lune**, aussi connue sous le nom de **Terre I**, est le seul satellite de la planète Terre."))
                        .rotation3DEffect(.degrees(rotationValue), axis: (x: 0, y: 1, z: 0))
                }
                Spacer()
                Button("Animate..!") {
                    displayAnswer = true
                    withAnimation(.linear(duration: 0.2)) {
                        rotationValue = -90
                    }
                    withAnimation(.linear(duration: 0.2).delay(0.2)) {
                        rotationAnswerValue = 0
                    }
                }
            }
        }
    }
}

struct QuizzView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzView()
            .preferredColorScheme(.dark)
    }
}
