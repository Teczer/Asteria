//
//  CardData.swift
//  Asteria
//
//  Created by Apprenant 87 on 22/06/2022.
//
//  POUR RETROUVER LES CARTES :
//  command+L pour jump à la ligne choisie
//
//  Système solaire : ligne 44
//  Galaxies : ligne 216
//  Phénomènes observables : ligne 378
//  Astronautes : ligne 532
//

import SwiftUI

// COLLECTIONS

let collection1 = CollectionType(
    collectionName: "Système solaire",
    collectionImages: [SingleCardType(cardFront: cardFront1, cardBack: cardBack1), SingleCardType(cardFront: cardFront2, cardBack: cardBack2), SingleCardType(cardFront: cardFront3, cardBack: cardBack3), SingleCardType(cardFront: cardFront4, cardBack: cardBack4), SingleCardType(cardFront: cardFront5, cardBack: cardBack5)])

let collection2 = CollectionType(
    collectionName: "Galaxies",
    collectionImages: [SingleCardType(cardFront: cardFront6, cardBack: cardBack6), SingleCardType(cardFront: cardFront7, cardBack: cardBack7), SingleCardType(cardFront: cardFront8, cardBack: cardBack8), SingleCardType(cardFront: cardFront9, cardBack: cardBack9), SingleCardType(cardFront: cardFront10, cardBack: cardBack10)])

let collection3 = CollectionType(
    collectionName: """
                    Phénomènes
                    observables
                    """,
    collectionImages: [SingleCardType(cardFront: cardFront11, cardBack: cardBack11), SingleCardType(cardFront: cardFront12, cardBack: cardBack12), SingleCardType(cardFront: cardFront13, cardBack: cardBack13), SingleCardType(cardFront: cardFront14, cardBack: cardBack14), SingleCardType(cardFront: cardFront15, cardBack: cardBack15)])

let collection4 = CollectionType(
    collectionName: """
                    Astronautes
                    célèbres
                    """,
    collectionImages: [SingleCardType(cardFront: cardFront16, cardBack: cardBack16), SingleCardType(cardFront: cardFront17, cardBack: cardBack17), SingleCardType(cardFront: cardFront18, cardBack: cardBack18), SingleCardType(cardFront: cardFront19, cardBack: cardBack19), SingleCardType(cardFront: cardFront20, cardBack: cardBack20)])



// SYSTEME SOLAIRE //////////////////////////////////////////////////////

let cardFront1 = CardFrontType(
    cardTitle: "SOLEIL",
    cardFrontImage: "collec1-cardFrontImage-1-soleil",
    collectionName: "SYSTÈME SOLAIRE",
    cardNumber: "1",
    miniCard: false)

let cardBack1 = CardBackType(
    cardTitle: "SOLEIL",
    cardBackImage: "collec1-cardBackImage-1-soleil",
    cardFunFactIcon1: "circle.slash.fill",
    cardFunFactIcon2: "arrow.left.and.right.circle.fill",
    cardFunFactIcon3: "thermometer",
    cardFunFactName1: "Diamètre",
    cardFunFactName2: """
                        Distance
                        de la terre
                        """,
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
    cardTitle: "COMÈTE",
    cardFrontImage: "collec1-cardFrontImage-2-comet",
    collectionName: "SYSTÈME SOLAIRE",
    cardNumber: "2",
    miniCard: false)

let cardBack2 = CardBackType(
    cardTitle: "COMÈTE",
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
                    à ce jour
                    """,
    cardFunFact3: """
                    580 millions
                    de kilomètres
                    """,
    cardDescription: "Une comète est un petit corps céleste constitué d’un noyau de glace et de poussière en orbite autour d’une étoile. Lorsqu’elle s’approche de cette étoile, le noyau s’entoure d’une sorte de fine atmosphère brillante constituée de gaz et de poussières, appelée chevelure, souvent prolongée de deux traînées lumineuses, qu’on appelle les queues, et qui peuvent s’étendre sur plusieurs centaines de millions de km. Le mot « comète » vient du grec ancien et signifie « astre chevelu ».")

let cardFront3 = CardFrontType(
    cardTitle: "NEPTUNE",
    cardFrontImage: "collec1-cardFrontImage-3-neptune",
    collectionName: "SYSTEME SOLAIRE",
    cardNumber: "3",
    miniCard: false)

let cardBack3 = CardBackType(
    cardTitle: "NEPTUNE",
    cardBackImage: "collec1-cardBackImage-3-neptune",
    cardFunFactIcon1: "circle.slash.fill",
    cardFunFactIcon2: "arrow.left.and.right.circle.fill",
    cardFunFactIcon3: "thermometer",
    cardFunFactName1: "Diamètre",
    cardFunFactName2: """
                        Distance
                        de la terre
                        """,
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
    cardTitle: "ASTÉROÏDE",
    cardFrontImage: "collec1-cardFrontImage-4-asteroid",
    collectionName: "SYSTEME SOLAIRE",
    cardNumber: "4",
    miniCard: false)

let cardBack4 = CardBackType(
    cardTitle: "ASTÉROÏDE",
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
    cardTitle: "SATURNE",
    cardFrontImage: "collec1-cardFrontImage-5-saturn",
    collectionName: "SYSTÈME SOLAIRE",
    cardNumber: "5",
    miniCard: false)

let cardBack5 = CardBackType(
    cardTitle: "SATURNE",
    cardBackImage: "collec1-cardBackImage-5-saturn",
    cardFunFactIcon1: "circle.slash.fill",
    cardFunFactIcon2: "arrow.left.and.right.circle.fill",
    cardFunFactIcon3: "thermometer",
    cardFunFactName1: "Diamètre",
    cardFunFactName2: """
                        Distance
                        de la terre
                        """,
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
    collectionName: "GALAXIES",
    cardNumber: "1",
    miniCard: false)

let cardBack6 = CardBackType(
    cardTitle: "VOIE LACTÉE",
    cardBackImage: "collec2-cardBackImage-6-voielactee",
    cardFunFactIcon1: "hurricane",
    cardFunFactIcon2: "circle.slash.fill",
    cardFunFactIcon3: "sparkles",
    cardFunFactName1: "Forme",
    cardFunFactName2: "Diamètre",
    cardFunFactName3: "Nombre d'étoiles",
    cardFunFact1: """
                    Spirale
                    
                    """,
    cardFunFact2: """
                    entre 100K et 200K
                    années-lumières
                    """,
    cardFunFact3: """
                    entre 200 et
                    400 milliards
                    """,
    cardDescription: "La Voie Lactée est la galaxie qui abrite notre système solaire. Son aspect blanchâtre « lacté » est dû à l’accumulation d’une multitude d’étoiles que l’on ne peut distinguer à l’oeil nu. Observée dès l'Antiquité par les Anciens, elle est ainsi baptisée d'après la mythologie grecque, selon laquelle Héra aurait arraché Héraclès, fils de Zeus, de son sein, faisant ainsi gicler le lait sur la voûte céleste.")

let cardFront7 = CardFrontType(
    cardTitle: "WHIRLPOOL",
    cardFrontImage: "collec2-cardFrontImage-7-whirlpool",
    collectionName: "GALAXIES",
    cardNumber: "2",
    miniCard: false)

let cardBack7 = CardBackType(
    cardTitle: "WHIRLPOOL",
    cardBackImage: "collec2-cardBackImage-7-whirlpool",
    cardFunFactIcon1: "hurricane",
    cardFunFactIcon2: "circle.slash.fill",
    cardFunFactIcon3: "arrow.left.and.right.circle.fill",
    cardFunFactName1: "Forme",
    cardFunFactName2: "Diamètre",
    cardFunFactName3: "Distance",
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
    collectionName: "GALAXIES",
    cardNumber: "3",
    miniCard: false)

let cardBack8 = CardBackType(
    cardTitle: "ANDROMÈDE",
    cardBackImage: "collec2-cardBackImage-8-andromede",
    cardFunFactIcon1: "hurricane",
    cardFunFactIcon2: "circle.slash.fill",
    cardFunFactIcon3: "sparkles",
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
    cardTitle: "MAGELLAN",
    cardFrontImage: "collec2-cardFrontImage-9-magellan",
    collectionName: "GALAXIES",
    cardNumber: "4",
    miniCard: false)

let cardBack9 = CardBackType(
    cardTitle: "MAGELLAN",
    cardBackImage: "collec2-cardBackImage-9-magellan",
    cardFunFactIcon1: "hurricane",
    cardFunFactIcon2: "circle.slash.fill",
    cardFunFactIcon3: "arrow.left.and.right.circle.fill",
    cardFunFactName1: "Forme",
    cardFunFactName2: "Diamètre",
    cardFunFactName3: "Distance",
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
    collectionName: "GALAXIES",
    cardNumber: "5",
    miniCard: false)

let cardBack10 = CardBackType(
    cardTitle: """
                HORSEHEAD
                NEBULA
                """,
    cardBackImage: "collec2-cardBackImage-10-horsehead",
    cardFunFactIcon1: "cloud.fill",
    cardFunFactIcon2: "binoculars.fill",
    cardFunFactIcon3: "arrow.left.and.right.circle.fill",
    cardFunFactName1: "Forme",
    cardFunFactName2: "Découverte",
    cardFunFactName3: """
                        Distance
                        de la terre
                        """,
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



//  PHÉNOMÈNES //////////////////////////////////////////////////////

let cardFront11 = CardFrontType(
    cardTitle: "ÉCLIPSE",
    cardFrontImage: "collec3-cardFrontImage-11-eclipse",
    collectionName: "PHÉNOMÈNES OBSERVABLES",
    cardNumber: "1",
    miniCard: false)

let cardBack11 = CardBackType(
    cardTitle: "ÉCLIPSE",
    cardBackImage: "collec3-cardBackImage-11-eclipse",
    cardFunFactIcon1: "moon.fill",
    cardFunFactIcon2: "stopwatch.fill",
    cardFunFactIcon3: "binoculars.fill",
    cardFunFactName1: """
                        Éclipes
                        par an
                        """,
    cardFunFactName2: """
                        Durée
                        moyenne
                        """,
    cardFunFactName3: """
                        Première
                        observation
                        """,
    cardFunFact1: """
                    4 à 7
                    
                    """,
    cardFunFact2: """
                    7 minutes
                    
                    """,
    cardFunFact3: """
                    1312
                    av. J.-C.
                    """,
    cardDescription: "Une éclipse est la disparition apparente et temporaire, pour un observateur, de tout ou partie d'un astre résultant de l'interposition d'un autre objet céleste soit entre cet astre et la source de lumière qui l'éclaire, soit entre cet astre et l'œil de l'observateur. La disparition de l'astre éclipsé, ou occulté, est son immersion; sa réapparition, son émersion. Il existe plusieurs sortes d'éclipses notamment les éclipses de Lune et celles de Soleil, ces dernières étant plus rares.")

let cardFront12 = CardFrontType(
    cardTitle: "SUPER LUNE",
    cardFrontImage: "collec3-cardFrontImage-12-moon",
    collectionName: "PHÉNOMÈNES OBSERVABLES",
    cardNumber: "2",
    miniCard: false)

let cardBack12 = CardBackType(
    cardTitle: "SUPER LUNE",
    cardBackImage: "collec3-cardBackImage-12-moon",
    cardFunFactIcon1: "arrow.down.right.and.arrow.up.left.circle.fill",
    cardFunFactIcon2: "circle.circle.fill",
    cardFunFactIcon3: "signature",
    cardFunFactName1: """
                        Distance la
                        plus courte
                        """,
    cardFunFactName2: """
                        Super lunes
                        par an
                        """,
    cardFunFactName3: """
                        Nom
                        officiel
                        """,
    cardFunFact1: """
                    356 511 km
                    en 2016
                    """,
    cardFunFact2: """
                    3 à 4
                    
                    """,
    cardFunFact3: """
                    périgée-
                    syzygie
                    """,
    cardDescription: "Une super lune désigne une pleine ou nouvelle lune qui se produit lorsque la Lune est à sa plus courte distance de la Terre. Visuellement, il est difficile de percevoir une différence avec les autres pleines lunes de l'année. En effet, la taille apparente de notre satellite dans le ciel varie entre 0,48 et 0,56 degré selon sa position sur son orbite. Une vraie « superlune » peut apparaître 14 % plus grande qu'une Pleine Lune qui coïncide avec l'apogée.")

let cardFront13 = CardFrontType(
    cardTitle: """
                ÉTOILES
                FILANTES
                """,
    cardFrontImage: "collec3-cardFrontImage-13-etoile",
    collectionName: "PHÉNOMÈNES OBSERVABLES",
    cardNumber: "3",
    miniCard: false)

let cardBack13 = CardBackType(
    cardTitle: "ÉTOILES FILANTES",
    cardBackImage: "collec3-cardBackImage-13-etoile",
    cardFunFactIcon1: "arrow.up.to.line.circle.fill",
    cardFunFactIcon2: "hare.fill",
    cardFunFactIcon3: "line.diagonal",
    cardFunFactName1: """
                        Altitude
                        moyenne
                        """,
    cardFunFactName2: """
                        Vitesse
                        moyenne
                        """,
    cardFunFactName3: """
                        Plus grosse
                        tempête
                        """,
    cardFunFact1: """
                    Entre 65
                    et 135 km
                    """,
    cardFunFact2: """
                    40 km/s
                    """,
    cardFunFact3: """
                    200 000 étoiles
                    par heure (1966)
                    """,
    cardDescription: "Une étoile filante est le phénomène lumineux qui accompagne l'entrée dans l'atmosphère d'un corps appelé météoroïde. Cette traînée lumineuse est causée par la vaporisation du corps et l'ionisation de l'air sur sa trajectoire, le météoroïde laissant derrière lui un sillage de gaz très chaud, ionisé et lumineux que l'on nomme un plasma. L'échauffement à l'origine du plasma est principalement dû à la compression de l'atmosphère en avant du corps supersonique et non à la friction.")

let cardFront14 = CardFrontType(
    cardTitle: """
                LUMIÈRE
                ZODIACALE
                """,
    cardFrontImage: "collec3-cardFrontImage-14-zod-light",
    collectionName: "PHÉNOMÈNES OBSERVABLES",
    cardNumber: "4",
    miniCard: false)

let cardBack14 = CardBackType(
    cardTitle: """
                LUMIÈRE
                ZODIACALE
                """,
    cardBackImage: "collec3-cardBackImage-14-zod-light",
    cardFunFactIcon1: "rays",
    cardFunFactIcon2: "arrow.left.and.right.circle.fill",
    cardFunFactIcon3: "aqi.low",
    cardFunFactName1: "Luminosité",
    cardFunFactName2: "Dimensions",
    cardFunFactName3: "Composition",
    cardFunFact1: """
                    Faible
                    
                    """,
    cardFunFact2: """
                    5 à 10 degrés
                    de large
                    """,
    cardFunFact3: """
                    poussière
                    cosmique
                    """,
    cardDescription: "La lumière zodiacale est une faible lueur de forme vaguement triangulaire visible sur le ciel nocturne et qui s'étend le long de l'axe du Soleil sur le plan du zodiaque, qui lui a donné son nom. Ce phénomène apparaît après le coucher du Soleil au printemps, ou avant son lever à l'automne, quand le zodiaque est perpendiculaire à l'horizon. Il est dû à la réflexion de la lumière solaire sur la poussière cosmique orbitant proche de la Terre.")

let cardFront15 = CardFrontType(
    cardTitle: "MÉTÉORITE",
    cardFrontImage: "collec3-cardFrontImage-15-meteorite",
    collectionName: "PHÉNOMÈNES OBSERVABLES",
    cardNumber: "5",
    miniCard: false)

let cardBack15 = CardBackType(
    cardTitle: "MÉTÉORITE",
    cardBackImage: "collec3-cardBackImage-15-meteorite",
    cardFunFactIcon1: "binoculars.fill",
    cardFunFactIcon2: "line.diagonal",
    cardFunFactIcon3: "hare.fill",
    cardFunFactName1: """
                        Première
                        découverte
                        """,
    cardFunFactName2: """
                        Chutes
                        par an
                        """,
    cardFunFactName3: """
                        Vitesse
                        de chute
                        """,
    cardFunFact1: """
                    an 861
                    
                    """,
    cardFunFact2: """
                    2000 à 5000
                    (plus d'1kg)
                    """,
    cardFunFact3: """
                    de 11 à
                    72 km/s
                    """,
    cardDescription: "Une météorite est un objet solide d'origine extraterrestre qui en traversant l'atmosphère terrestre n'a pas perdu toute sa masse, et qui en a atteint la surface solide sans y être entièrement volatilisé lors de l'impact avec cette surface. Les météorites portent le nom d'un lieu près duquel elles sont tombées ou ont été trouvées, généralement celui d'une municipalité ou d'une entité géographique.")



// ASTRONAUTES //////////////////////////////////////////////////////

let cardFront16 = CardFrontType(
    cardTitle: "GAGARINE",
    cardFrontImage: "collec4-cardFrontImage-16-gagarine",
    collectionName: "ASTRONAUTES CÉLÈBRES",
    cardNumber: "1",
    miniCard: false)

let cardBack16 = CardBackType(
    cardTitle: "GAGARINE",
    cardBackImage: "collec4-cardBackImage-16-gagarine",
    cardFunFactIcon1: "globe.europe.africa.fill",
    cardFunFactIcon2: "case.fill",
    cardFunFactIcon3: "star.fill",
    cardFunFactName1: "Nationalité",
    cardFunFactName2: "Profession",
    cardFunFactName3: "Particularité",
    cardFunFact1: """
                    Soviétique
                    
                    """,
    cardFunFact2: """
                    Pilote
                    de chasse
                    """,
    cardFunFact3: """
                    Premier homme
                    dans l'espace
                    """,
    cardDescription: "Youri Gagarine est le tout premier être humain à avoir effectué un vol dans l’espace, au cours de la mission Vostok 1 le 12 avril 1961. Les chances de réussite de la mission étaient estimées à 50%. Une fois lancé, le vaisseau est resté 1h48 en orbite autour de la Terre, à une altitude moyenne de 250 km. Aucune expérience n’était prévue, les spécialistes n’étant pas sûrs des capacités de l’être humain soumis à l’apesanteur.")

let cardFront17 = CardFrontType(
    cardTitle: "ARMSTRONG",
    cardFrontImage: "collec4-cardFrontImage-17-armstrong",
    collectionName: "ASTRONAUTES CÉLÈBRES",
    cardNumber: "2",
    miniCard: false)

let cardBack17 = CardBackType(
    cardTitle: "ARMSTRONG",
    cardBackImage: "collec4-cardBackImage-17-armstrong",
    cardFunFactIcon1: "globe.europe.africa.fill",
    cardFunFactIcon2: "case.fill",
    cardFunFactIcon3: "star.fill",
    cardFunFactName1: "Nationalité",
    cardFunFactName2: "Profession",
    cardFunFactName3: "Particularité",
    cardFunFact1: """
                    Américaine
                    
                    """,
    cardFunFact2: """
                    Pilote
                    de chasse
                    """,
    cardFunFact3: """
                    Premier homme
                    sur la Lune
                    """,
    cardDescription: "Neil Armstrong est le premier homme à avoir posé le pied sur la Lune, le 21 juillet 1969 au cours de la mission Apollo 11. Il a prononcé la désormais célèbre phrase : « C’est un petit pas pour l’homme, mais un bond de géant pour l’humanité ». Les échanges radio sont diffusés en direct dans le monde entier, et on estime que 13% de la population mondiale à suivi la sortie d’Armstrong. Au total, l’équipage est resté plus de 21h sur la Lune, dont 2h30 en sortie extravéhiculaire.")

let cardFront18 = CardFrontType(
    cardTitle: "LEONOV",
    cardFrontImage: "collec4-cardFrontImage-18-leonov",
    collectionName: "ASTRONAUTES CÉLÈBRES",
    cardNumber: "3",
    miniCard: false)

let cardBack18 = CardBackType(
    cardTitle: "LEONOV",
    cardBackImage: "collec4-cardBackImage-18-leonov",
    cardFunFactIcon1: "globe.europe.africa.fill",
    cardFunFactIcon2: "case.fill",
    cardFunFactIcon3: "star.fill",
    cardFunFactName1: "Nationalité",
    cardFunFactName2: "Profession",
    cardFunFactName3: "Particularité",
    cardFunFact1: """
                    Soviétique
                    
                    """,
    cardFunFact2: """
                    Pilote
                    de chasse
                    """,
    cardFunFact3: """
                    Première sortie
                    extravéhiculaire
                    """,
    cardDescription: "Alexei Leonov est le premier homme à avoir réalisé une sortie extravéhiculaire dans l’espace, le 18 mars 1965. Relié par un filin de 4,5m, Leonov est frappé par le silence qui règne, au point qu’il entend le bruit de son propre corps. La sortie extravéhiculaire aura duré en tout 12 minutes. Après ses différentes missions, Leonov devient responsable de l’entrainement des cosmonautes soviétiques.")

let cardFront19 = CardFrontType(
    cardTitle: "CHRÉTIEN",
    cardFrontImage: "collec4-cardFrontImage-19-chretien",
    collectionName: "ASTRONAUTES CÉLÈBRES",
    cardNumber: "4",
    miniCard: false)

let cardBack19 = CardBackType(
    cardTitle: "CHRÉTIEN",
    cardBackImage: "collec4-cardBackImage-19-chretien",
    cardFunFactIcon1: "globe.europe.africa.fill",
    cardFunFactIcon2: "case.fill",
    cardFunFactIcon3: "star.fill",
    cardFunFactName1: "Nationalité",
    cardFunFactName2: "Profession",
    cardFunFactName3: "Particularité",
    cardFunFact1: """
                    Française
                    
                    """,
    cardFunFact2: """
                    Pilote
                    de chasse
                    """,
    cardFunFact3: """
                    Premier français
                    dans l'espace
                    """,
    cardDescription: "Jean-Loup Chrétien est le premier français et premier européen à effectuer un vol habité, du 25 juin au 2 juillet 1982. Plusieurs expériences ont été réalisées lors de cette mission, notamment l’étude des réactions de l’homme en impesanteur, le comportement de certains matériaux en impesanteur ou encore l’étude de galaxies.")

let cardFront20 = CardFrontType(
    cardTitle: "TERECHKOVA",
    cardFrontImage: "collec4-cardFrontImage-20-terechkova",
    collectionName: "ASTRONAUTES CÉLÈBRES",
    cardNumber: "4",
    miniCard: false)

let cardBack20 = CardBackType(
    cardTitle: "TERECHKOVA",
    cardBackImage: "collec4-cardBackImage-20-terechkova",
    cardFunFactIcon1: "globe.europe.africa.fill",
    cardFunFactIcon2: "case.fill",
    cardFunFactIcon3: "star.fill",
    cardFunFactName1: "Nationalité",
    cardFunFactName2: "Profession",
    cardFunFactName3: "Particularité",
    cardFunFact1: """
                    Soviétique
                    
                    """,
    cardFunFact2: """
                    Instructrice
                    de parachutisme
                    """,
    cardFunFact3: """
                    Première femme
                    dans l'espace
                    """,
    cardDescription: "Valentina Terechkova est la première femme à être allée dans l’espace. Elle a effectué seule un vol de près de 3 jours, du 16 au 19 juin 1963. Une caméra installée à bord du vaisseau a diffusé les images de la cosmonaute dans le monde entier. Elle reste à ce jour la seule femme ayant voyagé en solitaire dans l’espace, ainsi que la plus jeune cosmonaute (elle avait 26 ans au moment du vol).")
