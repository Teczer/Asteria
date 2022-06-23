//
//  struct.swift
//  Asteria
//
//  Created by apprenant50 on 20/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown text formatting


struct Questions: Identifiable{

let id = UUID()
let questionValue : String
let questionAnswer : [String]
let goodAnswerNo : Int
let photoQuestion : String
let photoAnswer : String
let answerName : String
let answerExplanation : LocalizedStringKey

}

let quizzSystemesolaire: [Questions] = [
    
    Questions(questionValue: "La Lune est un satellite de la planète...", questionAnswer: ["Jupiter", "Terre", "Mars", "Ce n'est pas un satellite"], goodAnswerNo: 1, photoQuestion: "lune", photoAnswer: "terre", answerName: "TERRE", answerExplanation: "La **Lune**, aussi connue sous le nom de **Terre I**, est le seul satellite de la planète Terre."),

    Questions(questionValue: "L’éclipse se fait quand la Lune passe devant...", questionAnswer: ["Jupiter", "Le Soleile", "Mars", "ça n'existe pas"], goodAnswerNo: 1, photoQuestion: "eclipse", photoAnswer: "soleil", answerName: "SOLEIL", answerExplanation: "Le **Soleil** est l’**étoile** du système solaire"),
    
    Questions(questionValue: "Combien y a-t-il de planètes dans le système solaire ?", questionAnswer: ["5", "15", "17", "8"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Quelles sont les deux grandes catégories de planètes ?", questionAnswer: ["Solide et Liquide", "Rocheuse et gazeuze", "Tellurique et Rocheuse", "Liquide et Gazeuze"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Quelle est la plus grande planète du système solaire ?", questionAnswer: ["Jupiter", "Mars", "Vénus", "Saturne"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "En quelle année Pluton a-t-elle été reclassée en tant que planète naine ?", questionAnswer: ["1998", "2013", "2006", "2020"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Combien de satellites naturels Jupiter possède-t-elle ?", questionAnswer: ["1", "79", "2", "4"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Combien de temps faut-il à la Terre pour effectuer un tour complet autour du Soleil ?", questionAnswer: ["120 jours", "48 heures", "365 jours", "2000 ans"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Qui a marché le premier sur la Lune ?", questionAnswer: ["Charlie Duke", "Buzz Aldrin", "Neil Armstrong", "François Pescquet"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: " Quel est l'âge du système solaire ?", questionAnswer: ["1 million d'années", "4,5 milliards d'années", "2022 ans", "4000 ans"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Quelle planète surnomme-t-on \"l'étoile du berger\"?", questionAnswer: ["Mars", "Appolon", "Mercure", "Vénus"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Existe-t-il d'autres systèmes solaires dans l'univers ?", questionAnswer: ["Personne ne sait", "non", "oui", "peut-être"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Quelle est la distance Terre-Soleil ?", questionAnswer: ["1 année lumière", "150 million de km", "300 million de km", "5 années lumières"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Combien y a-t-il de planètes telluriques dans le système solaire ?", questionAnswer: ["4", "5", "6", "7"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Combien y a-t-il de planètes gazeuses dans le système solaire?", questionAnswer: ["2", "4", "6", "8"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    ]

let quizzGalaxies : [Questions] = [

    Questions(questionValue: "Combien y a-t-il d'étoiles dans notre galaxie ?", questionAnswer: ["1 million", "100 000", "entre 200 et 400 milliards", "1 milliard"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Quel est le surnom de notre galaxie ?", questionAnswer: ["La Voie Lactée", "La Bande Blanche", "Le Nuage Galactique", "La Salsa Blanche"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Qu'est-ce qu'une exoplanète ?", questionAnswer: ["Une planète naine", "Une planète morte", "Une planète riche", "Une planète située dans un autre système solaire"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "A quelle vitesse notre système solaire avance-t-il dans la galaxie ?", questionAnswer: ["1 000 km/h", "300 000 km/s", "820 000 km/h", "1 km/s"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Vers quelle constellation notre système solaire se dirige-t-il ?", questionAnswer: ["Hercule", "Orion", "La Lyre", "La Grande Ourse"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Où naissent les étoiles ?", questionAnswer: ["Dans les trous noirs", "N'importe où", "Dans les nébuleuses", "Du Big Bang"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Quelle est la galaxie la plus proche de la Voie Lactée ?", questionAnswer: ["La Galaxie du Sombrero", "La Galaxie d'Andromède", "La Galaxie des Chiens de Chasse", "La Galaxie du Cigare"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Comment surnomme-t-on le bras galactique dans lequel se trouve notre système solaire ?", questionAnswer: ["Le bras droit", "Le bras de Persée", "Le bras d'Orion", "Le bras de La Lyre"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "Quels objets célestes servent de repères géographiques pour les GPS ?", questionAnswer: ["Les quasars", "Les étoiles filantes", "Les planètes", "Les Satellites"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "La Voie Lactée est une galaxie...", questionAnswer: ["... de type spirale", "... de type lenticulaire", "... de type rectangulaire", "... de type elliptique"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: " Lequel de ces instruments ne sert pas à observer le ciel ?", questionAnswer: ["Le microscope", "La lunette", "Les jumelles", "Le télescope"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: "Le microscope est utilisé pour observer des objets ou des êtres vivants très petits (bactéries, cellules, etc.) et n'est donc pas destiné à l'observation du ciel"),
    
    Questions(questionValue: " A quelle classe de galaxies appartient M31, la grande galaxie d'Andromède ?", questionAnswer: ["Les spirales barrées", "Les spirales", " Les elliptiques", "Les irrégulières"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: "La galaxie d'Andromède est, comme la Voie lactée, une galaxie spirale. Elle est l'objet le plus lointain (plus de 2 millions d'années-lumière) visible à l'oeil nu depuis la Terre"),
    
    Questions(questionValue: "Combien de temps dure une révolution du Soleil autour du centre de la Galaxie ?", questionAnswer: ["Environ 4 siècles", "Environ 175.000 ans", "Environ 250 millions d'années", "Environ 3,8 milliards d'années"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: "Le Soleil met environ 250 millions d'années pour accomplir une révolution complète autour du centre de notre Galaxie, situé à environ 26.000 années-lumière."),
    
    Questions(questionValue: "Dans quelle constellation se trouve l'étoile Altaïr ?", questionAnswer: ["L'Aigle", "Hercule", "Le Cygne", "Orion"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: "L'étoile Altaïr appartient à la constellation de l'Aigle. Elle fait partie des 20 étoiles les plus brillantes du ciel et sa magnitude est de 0,8. Située à environ 17 années-lumière de la Terre, elle est aussi l'une des étoiles de première grandeur les plus proches de la Terre"),
    
    Questions(questionValue: "", questionAnswer: ["", "", "", ""], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
]
