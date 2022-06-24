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
    collectionImages: [SingleCardType(cardFront: cardFront1, cardBack: cardBack1)])

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
    cardTitle: "L U N E",
    cardFrontImage: "collection1-image-7",
    collectionName: "G A L A X I E S",
    cardNumber: "2",
    miniCard: false)

let cardBack2 = CardBackType(
    cardTitle: "L U N E",
    cardBackImage: "collection1-image-7",
    cardFunFactIcon1: "bolt.circle.fill",
    cardFunFactIcon2: "bolt.circle.fill",
    cardFunFactIcon3: "bolt.circle.fill",
    cardFunFactName1: "Spec 1 :",
    cardFunFactName2: "Spec 2 :",
    cardFunFactName3: "Spec 3 :",
    cardFunFact1: """
                    Chiffre
                    ou fun fact
                    """,
    cardFunFact2: """
                    Chiffre
                    ou fun fact
                    """,
    cardFunFact3: """
                    Chiffre
                    ou fun fact
                    """,
    cardDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue placerat quam id blandit. Cras maximus tempor efficitur. Curabitur leo metus, porta vel blandit vitae, suscipit et ex. Etiam ac rutrum mauris, sed euismod magna. Sed a porta urna. Nullam vehicula fermentum facilisis. Pellentesque gravida, nisl a consectetur mattis, magna urna pretium elit, eget euismod enim sapien quis orci. Proin quis tellus eros.")

let cardFront3 = CardFrontType(
    cardTitle: "A R M S T R O N G",
    cardFrontImage: "level4",
    collectionName: "A S T R O N A U T E S  C É L È B R E S",
    cardNumber: "3",
    miniCard: false)

let cardBack3 = CardBackType(
    cardTitle: "A R M S T R O N G",
    cardBackImage: "level4",
    cardFunFactIcon1: "bolt.circle.fill",
    cardFunFactIcon2: "bolt.circle.fill",
    cardFunFactIcon3: "bolt.circle.fill",
    cardFunFactName1: "Spec 1 :",
    cardFunFactName2: "Spec 2 :",
    cardFunFactName3: "Spec 3 :",
    cardFunFact1: """
                    Chiffre
                    ou fun fact
                    """,
    cardFunFact2: """
                    Chiffre
                    ou fun fact
                    """,
    cardFunFact3: """
                    Chiffre
                    ou fun fact
                    """,
    cardDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue placerat quam id blandit. Cras maximus tempor efficitur. Curabitur leo metus, porta vel blandit vitae, suscipit et ex. Etiam ac rutrum mauris, sed euismod magna. Sed a porta urna. Nullam vehicula fermentum facilisis. Pellentesque gravida, nisl a consectetur mattis, magna urna pretium elit, eget euismod enim sapien quis orci. Proin quis tellus eros.")
