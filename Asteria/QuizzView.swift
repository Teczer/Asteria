//
//  QuizzView.swift
//  Asteria
//
//  Created by apprenant70 on 21/06/2022.
//

import SwiftUI

struct QuizzView: View {
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
                        HStack(alignment: .bottom, spacing:4) {
                            Text("Question")
                                .font(.system(size: 16))
                                .foregroundColor(Color("LavenderBlush"))
                            Text("\(questionNoCurrent)")
                                .font(.system(size: 28))
                                .fontWeight(.black)
                                .foregroundColor(Color("LavenderBlush"))
                                .offset(y:3)
                            Text("sur \(questionNoTotal)")
                                .font(.system(size: 16))
                                .foregroundColor(Color("LavenderBlush"))
                        }
                        .padding(.horizontal)
                    }
                }
                Spacer()
                QACard(quizz: Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La Lune, aussi connue sous le nom de Terre, est le seul satellite de la planète Terre."))
                Spacer()
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
