//
//  QuizzController.swift
//  Asteria
//
//  Created by Apprenant 67 on 28/06/2022.
//

import Foundation

class QuizzController: ObservableObject {
    @Published var hasAnswer: Bool = false
    @Published var scoreCurrent: Int = 0
    @Published var goodAnswers: [Bool] = []
    @Published var questionNoCurrent : Int = 1
    @Published var questionNoTotal : Int = 3
    @Published var nextQuestion: Bool = false
}
