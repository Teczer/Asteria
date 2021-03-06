//
//  QuizzView.swift
//  Asteria
//
//  Created by apprenant70 on 21/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown text formatting

struct QuizzView: View {
    
    // animation
    @State private var rotationQuestionValue:Double = 0
    @State private var rotationAnswerValue:Double = 90
    @State private var offsetQuestionValue:Double = 0
    @State private var offsetAnswerValue:Double = 0
    @State private var displayAnswer:Bool = false
    
    // data
    var questionSerieCurrent : [Questions]
    var levelId : Int

    // bouton retour
    @Environment(\.dismiss) private var dismiss
    @State private var showAlert = false

    @StateObject var quizzController = QuizzController()
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack {
            Color("OxfordBlue")
                .ignoresSafeArea()
            VStack {
                HStack(alignment:.top) {
                    
                    Button(action: {
                        self.showAlert.toggle()
                    }, label: {
                    Image(systemName: "xmark.square.fill")
                        .foregroundColor(Color("LavenderBlush").opacity(0.8))
                        .font(.system(size: 32))
                        .padding()
                    })
                    .alert(isPresented: $showAlert) {
                        Alert(
                        title: Text("Attention !"),
                            message: Text("Êtes-vous sûr de vouloir revenir à l'aventure ?\rVotre progression dans ce niveau sera perdue !"),
                        primaryButton: .cancel(
                                Text("Annuler"),
                                action: {
                                }
                            ),
                            secondaryButton: .destructive(
                                Text("Confirmer"),
                                action: {
                                    dismiss.callAsFunction()
                                })
                        )
                    }
                    
                    
                    VStack(alignment: .trailing, spacing:0) {
                        ProgressionBar(quizzController: quizzController)
                            .padding()
                            .frame(height:35)
                        HStack(alignment: .bottom, spacing:3) {
                            Text("Question")
                                .font(.system(size: 12))
                                .foregroundColor(Color("LavenderBlush"))
                            Text("\(quizzController.questionNoCurrent)")
                                .font(.system(size: 22))
                                .fontWeight(.black)
                                .foregroundColor(Color("LavenderBlush"))
                                .offset(y:2.2)
                            Text("sur \(quizzController.questionNoTotal)")
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
                        QACardAnswer(questionSerieCurrent: questionSerieCurrent, quizzController: quizzController, viewRouter: viewRouter)
                            .offset(x:offsetAnswerValue)
                            .rotation3DEffect(.degrees(rotationAnswerValue), axis: (x: 0, y: 1, z: 0.01))
                    }
                    QACard(questionSerieCurrent: questionSerieCurrent, quizzController: quizzController)
                        .offset(x:offsetQuestionValue)
                        .rotation3DEffect(.degrees(rotationQuestionValue), axis: (x: 0, y: 1, z: 0.01))
                }
                Spacer()
                
                    .onChange(of: quizzController.hasAnswer) { _ in
                        if quizzController.hasAnswer {
                            displayAnswer = true
                            withAnimation(.easeIn(duration: 0.2).delay(1)) {
                                rotationQuestionValue = -90
                            }
                            withAnimation(.easeOut(duration: 0.2).delay(1.2)) {
                                rotationAnswerValue = 0
                            }
                        }
                    }
                
                    .onChange(of: quizzController.nextQuestion) { _ in
                        if quizzController.nextQuestion {
                            offsetQuestionValue = -500
                            rotationQuestionValue = 0
                            withAnimation(.easeIn(duration: 0.2)) {
                                offsetAnswerValue = 500
                            }
                            withAnimation(.easeOut(duration: 0.2).delay(0.2)) {
                                offsetQuestionValue = 0
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                quizzController.hasAnswer = false
                                quizzController.nextQuestion = false
                                displayAnswer = false
                                offsetAnswerValue = 0
                                rotationAnswerValue = 90
                            }
                        }
                    }
            }
        }
        .navigationBarHidden(true)
        .onAppear() {
            viewRouter.hideInAventure = true
            quizzController.levelId = levelId
        }
    }
}

struct QuizzView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzView(questionSerieCurrent: quizzSystemesolaire01, levelId: 1, viewRouter: ViewRouter())
            .preferredColorScheme(.dark)
    }
}
