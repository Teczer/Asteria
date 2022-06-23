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
    collectionImages: [SingleCardType(cardFront: cardFront1, cardBack: cardBack1), SingleCardType(cardFront: cardFront2, cardBack: cardBack2)])

let collection2 = CollectionType(
    collectionName: "G A L A X I E S",
    collectionImages: [SingleCardType(cardFront: cardFront1, cardBack: cardBack1), SingleCardType(cardFront: cardFront2, cardBack: cardBack2)])

// CARDS
let cardFront1 = CardFrontType(
    cardTitle: "S O L E I L",
    cardFrontImage: "collection1-image-1",
    collectionName: "S Y S T È M E  S O L A I R E",
    cardNumber: "1",
    miniCard: false)

let cardBack1 = CardBackType(
    cardTitle: "S O L E I L",
    cardBackImage: "collection1-image-1",
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

let cardFront2 = CardFrontType(
    cardTitle: "L U N E",
    cardFrontImage: "collection1-image-7",
    collectionName: "S Y S T È M E  S O L A I R E",
    cardNumber: "2",
    miniCard: false)

let cardBack2 = CardBackType(
    cardTitle: "LUNE",
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
