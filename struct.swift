//
//  struct.swift
//  Asteria
//
//  Created by apprenant50 on 20/06/2022.
//

import Foundation

struct Questions: Identifiable{

let id = UUID()
let questionValue :String
let questionAnswer : [String]
let goodAnswerNo :Int
let photoQuestion :String
let photoAnswer :String
let answerName :String
let answerExplanation :String

}

let quizz: [Questions]=[
    Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La Lune, aussi connue sous le nom de Terre, est le seul satellite de la planète Terre."),

    Questions(questionValue: "L’éclipse se fait quand la Lune passe devant...", questionAnswer: ["Jupiter", "Le Soleil", "Mars", "ça n'existe pas"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "Terre", answerExplanation: "La Lune, aussi connue sous le nom de Terre, est le seul satellite de la planète Terre.")
    ]


struct TextPlay : Identifiable{
    let id = UUID()
    let textLevel : String
    let textTitle : String
    let image : String
}

let gamePlay : [TextPlay]=[
TextPlay(textLevel: "NIVEAU  1", textTitle: "AUTOUR DE LA TERRE", image: "level1"),
TextPlay(textLevel: "NIVEAU  2", textTitle: "PHENOMENES OBSERVABLES", image: "level2"),
TextPlay(textLevel: "NIVEAU  3", textTitle: "GALAXIES", image: "level3"),
TextPlay(textLevel: "NIVEAU  4", textTitle: "ASTRAUNAUTES CELEBRES", image: "level4")
]
