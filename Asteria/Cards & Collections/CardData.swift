//
//  CollectionData.swift
//  Asteria
//
//  Created by Apprenant 87 on 22/06/2022.
//

import SwiftUI


let allCollections = [collection1, collection2]
let cardFronts = [cardFront1, cardFront2]
let cardBacks = [cardBack1, cardBack2]


// COLLECTIONS
let collection1 = CollectionType(
    collectionName: "S Y S T È M E  S O L A I R E",
    collectionImages: [SingleCardType(cardFront: cardFront1, cardBack: cardBack1), SingleCardType(cardFront: cardFront2, cardBack: cardBack2), SingleCardType(cardFront: cardFront3, cardBack: cardBack3), SingleCardType(cardFront: cardFront4, cardBack: cardBack4)])

let collection2 = CollectionType(
    collectionName: "G A L A X I E S",
    collectionImages: [SingleCardType(cardFront: cardFront2, cardBack: cardBack2)])

let collection3 = CollectionType(
    collectionName: """
                    A s t r o n a u t e s
                    c é l è b r e s
                    """,
    collectionImages: [SingleCardType(cardFront: cardFront3, cardBack: cardBack3)])

// CARDS
let cardFront1 = CardFrontType(
    cardTitle: "S O L E I L",
    cardFrontImage: "collec1-cardFrontImage-1-soleil",
    collectionName: "S Y S T È M E  S O L A I R E",
    cardNumber: "1",
    miniCard: false)

let cardBack1 = CardBackType(
    cardTitle: "S O L E I L",
    cardBackImage: "collec1-cardBackImage-1-soleil",
    cardFunFactIcon1: "circle.slash.fill",
    cardFunFactIcon2: "arrow.left.and.right.circle.fill",
    cardFunFactIcon3: "thermometer",
    cardFunFactName1: "Diamètre :",
    cardFunFactName2: "Distance de la terre :",
    cardFunFactName3: "Température :",
    cardFunFact1: """
                    1,4 millions de km
                    soit 109 fois la Terre
                    """,
    cardFunFact2: """
                    150 millions
                    de kilomètres
                    """,
    cardFunFact3: """
                    5500°C
                    en surface
                    """,
    cardDescription: "Le Soleil est une étoile de type naine jaune, principalement composée d’hydrogène (74%) et d’hélium (25%), et âgée de 4,5 millards d’années. Le nom Soleil vient du latin classique « sol », qui désigne l’astre, et « solis » renvoyant au Soleil en tant que divinité. Sa surface n’est pas solide mais constituée de gaz, qu’on appelle photosphère et qui émet sa lumière la plus visible. Son noyau peut atteindre 15 millions de degrés Celsius.")

let cardFront2 = CardFrontType(
    cardTitle: "C O M È T E",
    cardFrontImage: "collec1-cardFrontImage-2-comet",
    collectionName: "S Y S T È M E  S O L A I R E",
    cardNumber: "2",
    miniCard: false)

let cardBack2 = CardBackType(
    cardTitle: "C O M È T E",
    cardBackImage: "collec1-cardBackImage-2-comet",
    cardFunFactIcon1: "binoculars.fill",
    cardFunFactIcon2: "bonjour",
    cardFunFactIcon3: "ruler.fill",
    cardFunFactName1: """
                        Premières
                        observations :
                        """,
    cardFunFactName2: """
                        Comètes
                        répertoriées :
                        """,
    cardFunFactName3: """
                        Plus longue
                        traînée :
                        """,
    cardFunFact1: """
                    1059
                    av. J.C.
                    """,
    cardFunFact2: """
                    4 352
                    au 14 janvier 2020
                    """,
    cardFunFact3: """
                    580 millions
                    de kilomètres
                    """,
    cardDescription: "Une comète est un petit corps céleste constitué d’un noyau de glace et de poussière en orbite autour d’une étoile. Lorsqu’elle s’approche de cette étoile, le noyau s’entoure d’une sorte de fine atmosphère brillante constituée de gaz et de poussières, appelée chevelure, souvent prolongée de deux traînées lumineuses, qu’on appelle les queues, et qui peuvent s’étendre sur plusieurs centaines de millions de km. Le mot « comète » vient du grec ancien et signifie « astre chevelu ». ")

let cardFront3 = CardFrontType(
    cardTitle: "N E P T U N E",
    cardFrontImage: "collec1-cardFrontImage-3-neptune",
    collectionName: "S Y S T È M E  S O L A I R E",
    cardNumber: "3",
    miniCard: false)

let cardBack3 = CardBackType(
    cardTitle: "N E P T U N E",
    cardBackImage: "collec1-cardBackImage-3-neptune",
    cardFunFactIcon1: "circle.slash.fill",
    cardFunFactIcon2: "arrow.left.and.right.circle.fill",
    cardFunFactIcon3: "thermometer",
    cardFunFactName1: "Diamètre :",
    cardFunFactName2: "Distance de la terre :",
    cardFunFactName3: "Température :",
    cardFunFact1: """
                    49 244 km
                    soit 3,9 fois la Terre
                    """,
    cardFunFact2: """
                    4,3 milliards
                    de kilomètres
                    """,
    cardFunFact3: """
                    −218,15 °C
                    en surface
                    """,
    cardDescription: "Neptune est la planète la plus éloignée du système solaire. Les conditions particulières de Neptune transformeraient le carbone présent en diamant. Ces diamants tomberaient ensuite vers le noyau, donnant naissance à une pluie de nanodiamants. Invisible à l'œil nu, Neptune est la première planète du système solaire à avoir été découverte par déduction plutôt que par observation.")

let cardFront4 = CardFrontType(
    cardTitle: "A S T É R O Ï D E",
    cardFrontImage: "collec1-cardFrontImage-4-asteroid",
    collectionName: "S Y S T È M E  S O L A I R E",
    cardNumber: "4",
    miniCard: false)

let cardBack4 = CardBackType(
    cardTitle: "A S T É R O Ï D E",
    cardBackImage: "collec1-cardBackImage-4-asteroid",
    cardFunFactIcon1: "binoculars.fill",
    cardFunFactIcon2: "bonjour",
    cardFunFactIcon3: "gyroscope",
    cardFunFactName1: """
                        Première
                        découverte :
                        """,
    cardFunFactName2: """
                        Astéroïdes
                        répertoriés :
                        """,
    cardFunFactName3: """
                        Première
                        exploration :
                        """,
    cardFunFact1: """
                    1801
                    Astéroïde Cérès
                    """,
    cardFunFact2: """
                    plus de
                    720 000
                    """,
    cardFunFact3: """
                    Sonde Galileo
                    en 1991
                    """,
    cardDescription: "Un astéroïde est un corps céleste composé de roches et de métaux, dont la taille peut aller de quelques centimètres à plusieurs kilomètres. La majorité se situe dans la zone comprise entre Mars et Jupiter, appelée la ceinture d’astéroïdes. Les astéroïdes dits géocroiseurs évoluent proches de la Terre, et sont étroitement surveillés afin de prévenir toute collision avec la Terre. On en dénombre plus de 20 000.")

let cardFront5 = CardFrontType(
    cardTitle: "S A T U R N E",
    cardFrontImage: "collec1-cardFrontImage-5-saturn",
    collectionName: "S Y S T È M E  S O L A I R E",
    cardNumber: "4",
    miniCard: false)

let cardBack5 = CardBackType(
    cardTitle: "S A T U R N E",
    cardBackImage: "collec1-cardBackImage-5-saturn",
    cardFunFactIcon1: "binoculars.fill",
    cardFunFactIcon2: "bonjour",
    cardFunFactIcon3: "gyroscope",
    cardFunFactName1: """
                        Première
                        découverte :
                        """,
    cardFunFactName2: """
                        Astéroïdes
                        répertoriés :
                        """,
    cardFunFactName3: """
                        Première
                        exploration :
                        """,
    cardFunFact1: """
                    1801
                    Astéroïde Cérès
                    """,
    cardFunFact2: """
                    plus de
                    720 000
                    """,
    cardFunFact3: """
                    Sonde Galileo
                    en 1991
                    """,
    cardDescription: "Un astéroïde est un corps céleste composé de roches et de métaux, dont la taille peut aller de quelques centimètres à plusieurs kilomètres. La majorité se situe dans la zone comprise entre Mars et Jupiter, appelée la ceinture d’astéroïdes. Les astéroïdes dits géocroiseurs évoluent proches de la Terre, et sont étroitement surveillés afin de prévenir toute collision avec la Terre. On en dénombre plus de 20 000.")
