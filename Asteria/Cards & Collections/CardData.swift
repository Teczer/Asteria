//
//  CardData.swift
//  Asteria
//
//  Created by Apprenant 87 on 22/06/2022.
//
//  POUR RETROUVER LES CARTES :
//  Système solaire : LIGNES X À X
//  Galaxies : LIGNES X À X
//  Phénomènes observables : LIGNES X À X
//  Astronautes : LIGNES X À X
//

import SwiftUI

// COLLECTIONS

let collection1 = CollectionType(
    collectionName: "S Y S T È M E  S O L A I R E",
    collectionImages: [SingleCardType(cardFront: cardFront1, cardBack: cardBack1), SingleCardType(cardFront: cardFront2, cardBack: cardBack2), SingleCardType(cardFront: cardFront3, cardBack: cardBack3), SingleCardType(cardFront: cardFront4, cardBack: cardBack4), SingleCardType(cardFront: cardFront5, cardBack: cardBack5)])

let collection2 = CollectionType(
    collectionName: "G A L A X I E S",
    collectionImages: [SingleCardType(cardFront: cardFront6, cardBack: cardBack6), SingleCardType(cardFront: cardFront7, cardBack: cardBack7), SingleCardType(cardFront: cardFront8, cardBack: cardBack8), SingleCardType(cardFront: cardFront9, cardBack: cardBack9), SingleCardType(cardFront: cardFront10, cardBack: cardBack10)])

let collection3 = CollectionType(
    collectionName: """
                    A s t r o n a u t e s
                    c é l è b r e s
                    """,
    collectionImages: [SingleCardType(cardFront: cardFront3, cardBack: cardBack3)])



// SYSTEME SOLAIRE //////////////////////////////////////////////////////

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
    cardFunFactName1: "Diamètre",
    cardFunFactName2: "Distance de la terre",
    cardFunFactName3: "Température",
    cardFunFact1: """
                    1,4 millions de km
                    (109 fois la Terre)
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
                        observations
                        """,
    cardFunFactName2: """
                        Comètes
                        répertoriées
                        """,
    cardFunFactName3: """
                        Plus longue
                        traînée
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
    cardDescription: "Une comète est un petit corps céleste constitué d’un noyau de glace et de poussière en orbite autour d’une étoile. Lorsqu’elle s’approche de cette étoile, le noyau s’entoure d’une sorte de fine atmosphère brillante constituée de gaz et de poussières, appelée chevelure, souvent prolongée de deux traînées lumineuses, qu’on appelle les queues, et qui peuvent s’étendre sur plusieurs centaines de millions de km. Le mot « comète » vient du grec ancien et signifie « astre chevelu ».")

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
    cardFunFactName1: "Diamètre",
    cardFunFactName2: "Distance de la terre",
    cardFunFactName3: "Température",
    cardFunFact1: """
                    49 244 km
                    (3,9 fois la Terre)
                    """,
    cardFunFact2: """
                    4,3 milliards
                    de kilomètres
                    """,
    cardFunFact3: """
                    −218,15°C
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
                        découverte
                        """,
    cardFunFactName2: """
                        Astéroïdes
                        répertoriés
                        """,
    cardFunFactName3: """
                        Première
                        exploration
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
    cardNumber: "5",
    miniCard: false)

let cardBack5 = CardBackType(
    cardTitle: "S A T U R N E",
    cardBackImage: "collec1-cardBackImage-5-saturn",
    cardFunFactIcon1: "circle.slash.fill",
    cardFunFactIcon2: "arrow.left.and.right.circle.fill",
    cardFunFactIcon3: "thermometer",
    cardFunFactName1: "Diamètre",
    cardFunFactName2: "Distance de la terre",
    cardFunFactName3: "Température",
    cardFunFact1: """
                    116 464 km
                    (9,4 fois la Terre)
                    """,
    cardFunFact2: """
                    1,3 milliards
                    de kilomètres
                    """,
    cardFunFact3: """
                    -189°C
                    en surface
                    """,
    cardDescription: "Deuxième géante gazeuse du système solaire, Saturne se distingue par son système d’anneaux (7 en tout), et elle possède également le plus grand nombre de satellites naturels (82). Elle est composée d’un noyau rocheux de silicates et de fer, entouré de couches constituées à 96% d’hydrogène. Les vents sur Saturne peuvent atteindre une vitesse de 1800 km/h. Connue depuis la préhistoire, elle a longtemps été la planète la plus éloignée du Soleil connue.")



// GALAXIES //////////////////////////////////////////////////////

let cardFront6 = CardFrontType(
    cardTitle: "VOIE LACTÉE",
    cardFrontImage: "collec2-cardFrontImage-6-voielactee",
    collectionName: "G A L A X I E S",
    cardNumber: "1",
    miniCard: false)

let cardBack6 = CardBackType(
    cardTitle: "VOIE LACTÉE",
    cardBackImage: "collec2-cardBackImage-6-voielactee",
    cardFunFactIcon1: "hurricane",
    cardFunFactIcon2: "circle.slash.fill",
    cardFunFactIcon3: "aqi.low",
    cardFunFactName1: "Forme",
    cardFunFactName2: "Diamètre",
    cardFunFactName3: "Nombre d'étoiles",
    cardFunFact1: """
                    Spirale
                    """,
    cardFunFact2: """
                    entre 100 000 et
                    200 000 années-lumières
                    """,
    cardFunFact3: """
                    entre 200 et
                    400 milliards
                    """,
    cardDescription: "La Voie Lactée est la galaxie qui abrite notre système solaire. Son aspect blanchâtre « lacté » est dû à l’accumulation d’une multitude d’étoiles que l’on ne peut distinguer à l’oeil nu. Observée dès l'Antiquité par les Anciens, elle est ainsi baptisée d'après la mythologie grecque, selon laquelle Héra aurait arraché Héraclès, fils de Zeus, de son sein, faisant ainsi gicler le lait sur la voûte céleste.")

let cardFront7 = CardFrontType(
    cardTitle: "WHIRLPOOL",
    cardFrontImage: "collec2-cardFrontImage-7-whirlpool",
    collectionName: "G A L A X I E S",
    cardNumber: "2",
    miniCard: false)

let cardBack7 = CardBackType(
    cardTitle: "WHIRLPOOL",
    cardBackImage: "collec2-cardBackImage-7-whirlpool",
    cardFunFactIcon1: "hurricane",
    cardFunFactIcon2: "circle.slash.fill",
    cardFunFactIcon3: "arrow.left.and.right.circle.fill",
    cardFunFactName1: """
                        Forme
                        """,
    cardFunFactName2: """
                        Diamètre
                        """,
    cardFunFactName3: """
                        Distance
                        """,
    cardFunFact1: """
                    Spirale
                    """,
    cardFunFact2: """
                    76 000
                    années-lumières
                    """,
    cardFunFact3: """
                    27 millions
                    d'années-lumières
                    """,
    cardDescription: "La galaxie du Tourbillon est une galaxie spirale reliée à une autre galaxie plus petite par un pont de matière. Sa structure en spirale provient de l’interaction étroite entre elle et la galaxie voisine. Observable au télescope, elle se trouve à l’extrémité du manche de la Grande Ourse, dans la constellation des Chiens de Chasse. Découverte en 1773, c’est l’un des plus beaux objets célestes de l’univers.")

let cardFront8 = CardFrontType(
    cardTitle: "ANDROMÈDE",
    cardFrontImage: "collec2-cardFrontImage-8-andromede",
    collectionName: "G A L A X I E S",
    cardNumber: "3",
    miniCard: false)

let cardBack8 = CardBackType(
    cardTitle: "ANDROMÈDE",
    cardBackImage: "collec2-cardBackImage-8-andromede",
    cardFunFactIcon1: "hurricane",
    cardFunFactIcon2: "circle.slash.fill",
    cardFunFactIcon3: "aqi.low",
    cardFunFactName1: "Forme",
    cardFunFactName2: "Diamètre",
    cardFunFactName3: "Nombre d'étoiles",
    cardFunFact1: """
                    Spirale
                    """,
    cardFunFact2: """
                    220 000
                    années-lumières
                    """,
    cardFunFact3: """
                    Mille
                    milliards
                    """,
    cardDescription: "Appelée grande nébuleuse d’Andromède jusqu'à ce que sa vraie nature ait été reconnue dans les années 1920, la galaxie d'Andromède est la galaxie spirale la plus proche de la Voie lactée. Elle contiendrait environ mille milliards d'étoiles, soit deux à cinq fois plus que notre galaxie. La galaxie d’Andromède est l’une des rares galaxies observables à l’oeil nu depuis la Terre dans l’hémisphère nord. C’est également l’un des objets les plus étendus de la voûte céleste.")

let cardFront9 = CardFrontType(
    cardTitle: "M A G E L L A N",
    cardFrontImage: "collec2-cardFrontImage-9-magellan",
    collectionName: "G A L A X I E S",
    cardNumber: "4",
    miniCard: false)

let cardBack9 = CardBackType(
    cardTitle: "M A G E L L A N",
    cardBackImage: "collec2-cardBackImage-9-magellan",
    cardFunFactIcon1: "hurricane",
    cardFunFactIcon2: "circle.slash.fill",
    cardFunFactIcon3: "arrow.left.and.right.circle.fill",
    cardFunFactName1: """
                        Forme
                        """,
    cardFunFactName2: """
                        Diamètre
                        """,
    cardFunFactName3: """
                        Distance
                        """,
    cardFunFact1: """
                    Spirale
                    """,
    cardFunFact2: """
                    14 000
                    années-lumières
                    """,
    cardFunFact3: """
                    163 000
                    années-lumières
                    """,
    cardDescription: "Le Grand Nuage de Magellan est une galaxie naine satellite de la Voie lactée. Visible dans le ciel nocturne de l’hémisphère sud, il a été découvert vers l’an 964, mais c’est l’expédition de Magellan autour de la Terre entre 1519 et 1522 qui le popularisera et lui donnera son nom. Le Grand Nuage de Magellan pourrait entrer en collision avec la Voie lactée dans 2 milliards d'années.")

let cardFront10 = CardFrontType(
    cardTitle: "HORSEHEAD NEBULA",
    cardFrontImage: "collec2-cardFrontImage-10-horsehead",
    collectionName: "G A L A X I E S",
    cardNumber: "5",
    miniCard: false)

let cardBack10 = CardBackType(
    cardTitle: "HORSEHEAD NEBULA",
    cardBackImage: "collec2-cardBackImage-10-horsehead",
    cardFunFactIcon1: "cloud.fill",
    cardFunFactIcon2: "binoculars.fill",
    cardFunFactIcon3: "arrow.left.and.right.circle.fill",
    cardFunFactName1: "Forme",
    cardFunFactName2: "Découverte",
    cardFunFactName3: "Distance de la terre",
    cardFunFact1: """
                    Nébuleuse
                    nuageuse
                    """,
    cardFunFact2: """
                    1888
                    
                    """,
    cardFunFact3: """
                    1600
                    années-lumières
                    """,
    cardDescription: "La nébuleuse à la tête de cheval est une nébuleuse obscure dans la constellation d’Orion. Elle est facilement reconnaissable par la forme en tête de cheval qui lui a donné son nom et qui se découpe dans la nébuleuse. L’obscurité de la tête de cheval est causée par la présence d’un nuage dense de gaz et de poussière.")
