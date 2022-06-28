//
//  AnswerButton.swift
//  Asteria
//
//  Created by apprenant70 on 21/06/2022.
//

import SwiftUI

struct AnswerButton: View {
    @State var selectedButton : Bool = false
    var textInButton : String
    var goodAnswer : Int
    var clicAnswer : Int
    @StateObject var quizzController : QuizzController
    
    var body: some View {
        Button {
            if quizzController.hasAnswer == false {
                
                self.selectedButton = true   // sélectionne le bouton
                quizzController.hasAnswer = true   // empêche de répondre 2 fois
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                    // désélectionne le bouton après x secondes
                    self.selectedButton = false
                }
                
                if goodAnswer == clicAnswer {
                    // incrémente le score si bonne réponse
                    quizzController.scoreCurrent += 1
                    // append une valeur si bonne ou mauvaise réponse
                    quizzController.goodAnswers += [true]
                } else {
                    quizzController.goodAnswers += [false]
                }
            }
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 128, height: 50)
                .foregroundColor(selectedButton ? (goodAnswer == clicAnswer ? Color(.green) : Color(.red) ) : Color("OxfordBlue"))
                .overlay(
                    Text(textInButton)
                        .font(.system(size: 12))
                        .frame(width: 73, height: 50)
                        .foregroundColor(selectedButton ? Color("SpaceCadet") : Color.white )
                )
        }
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(textInButton: "Test", goodAnswer: 0, clicAnswer: 0, quizzController: QuizzController())
    }
}
