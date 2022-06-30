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


let quizzSystemesolaire01: [Questions] = [
    
    Questions(
        questionValue: "La Lune 🌙 est un satellite de la planète...",
        questionAnswer: [
            "Jupiter",
            "Terre",
            "Mars",
            "Ce n'est pas un satellite"
        ],
        goodAnswerNo: 1,
        photoQuestion: "lune",
        photoAnswer: "terre",
        answerName: "Terre",
        answerExplanation: "La **Lune**, aussi connue sous le nom de **Terre I**, est le seul satellite de la planète Terre."
    ),

    Questions(
        questionValue: "Quel est le nom du premier satellite artificiel envoyé en orbite autour de la Terre ?",
        questionAnswer: [
            "Apollo",
            "Ariane",
            "Mir",
            "Spoutnik"
        ],
        goodAnswerNo: 3,
        photoQuestion: "quizz-1-question-2",
        photoAnswer: "quizz-1-answer-2",
        answerName: "Spoutnik",
        answerExplanation: "Le premier satellite artificiel, **Spoutnik**, a été envoyé par l'URSS en 1957. **Apollo** est le nom des vols habités américains, **Ariane** est le nom d'une série de fusées européennes et **Mir** était une station spatiale russe."
    ),
    
    Questions(
        questionValue: "Combien y a-t-il de planètes dans le système solaire ?",
        questionAnswer: [
            "5",
            "15",
            "17",
            "8"
        ],
        goodAnswerNo: 3,
        photoQuestion: "quizz-1-question-3",
        photoAnswer: "quizz-1-answer-3",
        answerName: "8",
        answerExplanation: "Depuis Août 2006, **Pluton** n'est plus considérée comme une planète, donc notre système solaire ne compte plus que **8 planètes**."
    )]

let quizzSystemesolaire02: [Questions] = [
    
    Questions(
        questionValue: "Quelles sont les deux grandes catégories de planètes ?",
        questionAnswer: [
            "Solide et Liquide",
            "Rocheuse et gazeuze",
            "Tellurique et Rocheuse",
            "Liquide et Gazeuze"
        ],
        goodAnswerNo: 1,
        photoQuestion: "quizz-1-question-4",
        photoAnswer: "quizz-1-answer-4",
        answerName: "Rocheuse et gazeuze",
        answerExplanation: "Notre système solaire contient les **deux types de planètes**. Mercure, Vénus, la Terre et Mars sont des **planètes rocheuses** aussi appelées \"planètes tellurique\" alors que Jupiter, Saturne, Uranus et Neptune sont des **planètes gazeuses**."
    ),
    
    Questions(
        questionValue: "Quelle est la plus grande planète du système solaire ?",
        questionAnswer: [
            "Jupiter",
            "Mars",
            "Vénus",
            "Saturne"
        ],
        goodAnswerNo: 0,
        photoQuestion: "quizz-1-question-5",
        photoAnswer: "quizz-1-answer-5",
        answerName: "Jupiter",
        answerExplanation: "Jupiter est la plus grande planète du Système solaire. Elle est plus de **onze fois plus grosse** que la Terre."
    ),
    
    Questions(
        questionValue: "En quelle année Pluton a-t-elle été reclassée en tant que planète naine ?",
        questionAnswer: [
            "1998",
            "2013",
            "2006",
            "2020"
        ],
        goodAnswerNo: 2,
        photoQuestion: "quizz-1-question-6",
        photoAnswer: "quizz-1-answer-6",
        answerName: "2006",
        answerExplanation: "Depuis Août 2006, **Pluton** n'est plus considérée comme une planète, elle a donc été classée comme **planète naine**"
    )]

let quizzSystemesolaire03: [Questions] = [
    
    Questions(
        questionValue: "Combien de satellites naturels Jupiter possède-t-elle ?",
        questionAnswer: [
            "1",
            "79",
            "2",
            "4"
        ],
        goodAnswerNo: 1,
        photoQuestion: "quizz-1-question-7",
        photoAnswer: "quizz-1-answer-7",
        answerName: "79",
        answerExplanation: "On connaît 80 satellites naturels de Jupiter, dont **79 confirmés** : 72 numérotés, et 57 nommés."
    ),
    
    Questions(
        questionValue: "Combien de temps faut-il à la Terre pour effectuer un tour complet autour du Soleil ?",
        questionAnswer: [
            "120 jours",
            "48 heures",
            "365 jours",
            "2000 ans"
        ],
        goodAnswerNo: 2,
        photoQuestion: "quizz-1-question-8",
        photoAnswer: "quizz-1-answer-8",
        answerName: "365 jours",
        answerExplanation: "Un tour complet du circuit dure **365 jours 5 heures, 48 minutes et 45 secondes**."
    ),
    
    Questions(
        questionValue: "Qui a marché le premier sur la Lune ?",
        questionAnswer: [
            "Charlie Duke",
            "Buzz Aldrin",
            "Neil Armstrong",
            "François Pescquet"
        ],
        goodAnswerNo: 2,
        photoQuestion: "quizz-1-question-9",
        photoAnswer: "quizz-1-answer-9",
        answerName: "Neil Armstrong",
        answerExplanation: "Le 16 juillet 1969, les trois astronautes américains de la mission Apollo 11, Neil Armstrong, Buzz Aldrin et Michael Collins, décollaient pour la Lune depuis la Floride, **Neil Armstrong est le premier homme a avoir posé son pied sur la lune**"
    )]

let quizzSystemesolaire04: [Questions] = [
    
    Questions(
        questionValue: "Quel est l'âge du système solaire ?",
        questionAnswer: [
            "1 million d'années",
            "4,5 milliards d'années",
            "2022 ans",
            "4000 ans"
        ],
        goodAnswerNo: 1,
        photoQuestion: "quizz-1-question-10",
        photoAnswer: "quizz-1-answer-10",
        answerName: "4,567 milliards d'années",
        answerExplanation: "L’âge de la Terre, et celui du système solaire, est de **4,567 milliards d’années**, avec une incertitude de quelques dizaines de millions d’années. C’est une connaissance aujourd’hui stabilisée."
    ),
    
    Questions(
        questionValue: "Quelle planète surnomme-t-on \"l'étoile du berger\"?",
        questionAnswer: [
            "Mars",
            "Apollon",
            "Mercure",
            "Vénus"
        ],
        goodAnswerNo: 3,
        photoQuestion: "quizz-1-question-11",
        photoAnswer: "quizz-1-answer-11",
        answerName: "Vénus",
        answerExplanation: "L'expression *étoile du Berger* est très ancienne. Autrefois, les gardiens de troupeaux qui vivaient au rythme des jours et des nuits, tout au long de l'année, guettaient l'apparition de la première étoile dans le ciel, le soir, pour rentrer à la bergerie."
    ),
    
    Questions(
        questionValue: "Existe-t-il d'autres systèmes solaires dans l'univers ?",
        questionAnswer: [
            "Personne ne sait",
            "Non",
            "Oui",
            "Peut-être"
        ],
        goodAnswerNo: 2,
        photoQuestion: "quizz-1-question-12",
        photoAnswer: "quizz-1-answer-12",
        answerName: "Oui",
        answerExplanation: "Le premier système planétaire découvert autour d'une étoile de type solaire en dehors du Système solaire est celui de **l'étoile 51 Pegasi** en 1995. Depuis ce temps, des **centaines** de planètes extra-solaires ont été découvertes."
    )]

let quizzSystemesolaire05: [Questions] = [
    
    Questions(
        questionValue: "Quelle est la distance Terre-Soleil ?",
        questionAnswer: [
            "1 année lumière",
            "150 million de km",
            "300 million de km",
            "5 années lumières"
        ],
        goodAnswerNo: 1,
        photoQuestion: "quizz-1-question-13",
        photoAnswer: "quizz-1-answer-13",
        answerName: "150 million de km",
        answerExplanation: "L'unité astronomique (au) est l'unité de mesure correspondant à la distance moyenne qui sépare la Terre du Soleil, soit **environ 150 millions de km** (exactement 149 597 870,7 km)."
    ),
    
    Questions(
        questionValue: "Combien y a-t-il de planètes telluriques dans le système solaire ?",
        questionAnswer: [
            "4",
            "5",
            "6",
            "7"
        ],
        goodAnswerNo: 0,
        photoQuestion: "quizz-1-question-14",
        photoAnswer: "quizz-1-answer-14",
        answerName: "4",
        answerExplanation: "Les planètes telluriques sont **rocheuses et riches en éléments chimiques divers et variés**. Elles ont une surface solide sur laquelle nous pouvons marcher ou encore y déposer des sondes pour les étudier. Dans notre système planétaire, ce sont les planètes **les plus proches du Soleil**."
    ),
    
    Questions(
        questionValue: "Combien y a-t-il de planètes gazeuses dans le système solaire?",
        questionAnswer: [
            "2",
            "4",
            "6",
            "8"
        ],
        goodAnswerNo: 1,
        photoQuestion: "quizz-1-question-15",
        photoAnswer: "quizz-1-answer-15",
        answerName: "4",
        answerExplanation: "Il s'agit de **Jupiter, Saturne, Uranus, et Neptune**. Les planètes gazeuses sont principalement composées **d'hydrogène et d'hélium** et ont généralement une faible densité, une rotation rapide, des atmosphères épaisses, des anneaux et beaucoup de satellites."),
    ]

let quizzGalaxies01 : [Questions] = [

    Questions(
        questionValue: "Combien y a-t-il d'étoiles dans notre galaxie ?",
        questionAnswer: [
            "1 million",
            "100 000",
            "entre 200 et 400 milliards",
            "1 milliard"
        ],
        goodAnswerNo: 2,
        photoQuestion: "milky-way-1",
        photoAnswer: "milky-way-2",
        answerName: "Entre 200 et 400 milliards",
        answerExplanation: "La Voie Lactée est un gigantesque disque de **100 000 années-lumière de diamètre** qui contient entre 200 et 400 milliards d’étoiles. Et notre Soleil est en fait l’une de ces étoiles."
    ),
    
    Questions(
        questionValue: "Quel est le surnom de notre galaxie ?",
        questionAnswer: [
            "La Voie Lactée",
            "La Bande Blanche",
            "Le Nuage Galactique",
            "La Salsa Blanche"
        ],
        goodAnswerNo: 0,
        photoQuestion: "milky-way-3",
        photoAnswer: "milky-way-4",
        answerName: "La Voie lactée",
        answerExplanation: "La Voie lactée, également appelée **Galaxie** — avec une majuscule — se présente comme une bande blanchâtre, floue, irrégulière, qui ceinture tout le ciel étoilé."
    ),
    
    Questions(
        questionValue: "Une exoplanète est une planète...",
        questionAnswer: [
            "naine",
            "morte",
            "riche",
            "située dans un autre système solaire"
        ],
        goodAnswerNo: 3,
        photoQuestion: "exoplanete-1",
        photoAnswer: "exoplanete-2",
        answerName: "située dans un autre système solaire",
        answerExplanation: "Une exoplanète, ou **planète extrasolaire**, est une planète située en dehors du Système solaire."
    )]

let quizzGalaxies02 : [Questions] = [
    
    Questions(
        questionValue: "À quelle vitesse notre système solaire avance-t-il dans la galaxie ?",
        questionAnswer: [
            "1 000 km/h",
            "300 000 km/s",
            "820 000 km/h",
            "1 km/s"
        ],
        goodAnswerNo: 2,
        photoQuestion: "systeme-solaire-1",
        photoAnswer: "systeme-solaire-2",
        answerName: "820 000 km/h",
        answerExplanation: "Au-delà de la rotation de la Terre sur elle-même, la Terre subit de nombreux mouvements ! Elle tourne autour du Soleil à une vitesse de 30 km/s, soit plus de 100 000 km/h. Le **système solaire** est entraîné autour du centre de la Galaxie à une vitesse de 820 000 km/h."
    ),
    
    Questions(
        questionValue: "Vers quelle constellation notre système solaire se dirige-t-il ?",
        questionAnswer: [
            "Hercule",
            "Orion",
            "La Lyre",
            "La Grande Ourse"
        ],
        goodAnswerNo: 0,
        photoQuestion: "hercules-1",
        photoAnswer: "hercules-2",
        answerName: "Hercule",
        answerExplanation: "En 1783, **Herschel** découvre que le Soleil possède un **mouvement propre** et qu'il entraîne tout son cortège de planètes en direction d'un point situé dans la constellation d'Hercule : **l'Apex**."
    ),
    
    Questions(
        questionValue: "Où naissent les étoiles ?",
        questionAnswer: [
            "Dans les trous noirs",
            "N'importe où",
            "Dans les nébuleuses",
            "Du Big Bang"
        ],
        goodAnswerNo: 2,
        photoQuestion: "stars-hubble",
        photoAnswer: "pillars-of-creation",
        answerName: "Dans les nébuleuses",
        answerExplanation: "Comme les humains, les étoiles **naissent, grandissent et meurent**. Leurs berceaux sont d'immenses nuages froids de gaz et de poussière que l'on appelle des *nébuleuses*. La plus célèbre d'entre elles est la nébuleuse d'Orion, qui est visible à l'œil nu."
    )]

let quizzGalaxies03 : [Questions] = [
    
    Questions(
        questionValue: "La galaxie la plus proche de la Voie Lactée est la Galaxie...",
        questionAnswer: [
            "du Sombrero",
            "d'Andromède",
            "des Chiens de Chasse",
            "du Cigare"
        ],
        goodAnswerNo: 1,
        photoQuestion: "galaxies-1",
        photoAnswer: "andromeda",
        answerName: "La Galaxie d'Andromède",
        answerExplanation: "La Galaxie d'Andromède (M31) est la **plus proche** et la **plus grande** voisine de notre Voie lactée. Les astronomes estiment que toutes les deux entreront en collision d'ici quatre milliards d'années."
    ),
    
    Questions(
        questionValue: "Comment surnomme-t-on le bras galactique dans lequel se trouve notre système solaire ?",
        questionAnswer: [
            "Le bras droit",
            "Le bras de Persée",
            "Le bras d'Orion",
            "Le bras de La Lyre"
        ],
        goodAnswerNo: 2,
        photoQuestion: "milky-way-5",
        photoAnswer: "milky-way-6",
        answerName: "Le bras d'Orion",
        answerExplanation: "Le bras spiral d'Orion ou, simplement, le bras d'Orion (également appelé bras local ou avec son nom complet bras d'Orion-Cygne) est un bras spiral mineur de notre galaxie, la Voie lactée. C'est **dans ce bras** que se situe le Système solaire."
    ),
    
    Questions(
        questionValue: "Quels objets célestes servent de repères géographiques pour les GPS ?",
        questionAnswer: [
            "Les quasars",
            "Les étoiles filantes",
            "Les planètes",
            "Les satellites"
        ],
        goodAnswerNo: 0,
        photoQuestion: "gps",
        photoAnswer: "quasar",
        answerName: "Les quasars",
        answerExplanation: "Les quasars sont des **astres distants**, qui apparaissent comme des étoiles très brillantes lorsqu'on les observe au télescope, mais dont on sait aujourd'hui que ce sont des exemples de ce que l'on appelle des **noyaux actifs de galaxies**."
    )]

let quizzGalaxies04 : [Questions] = [
    
    Questions(
        questionValue: "La Voie Lactée est une galaxie de type...",
        questionAnswer: [
            "spirale",
            "lenticulaire",
            "rectangulaire",
            "elliptique"
        ],
        goodAnswerNo: 0,
        photoQuestion: "milky-way-7",
        photoAnswer: "milky-way-8",
        answerName: "de type spirale",
        answerExplanation: "Une *galaxie spirale* est un type de galaxie contenant jusqu'à plusieurs centaines de milliards d'étoiles et qui adopte la **forme aplatie d'un disque**, avec un renflement central sphérique lumineux appelé le *bulbe*."
    ),
    
    Questions(
        questionValue: "Lequel de ces instruments ne sert pas à observer le ciel ?",
        questionAnswer: [
            "Le microscope",
            "La lunette",
            "Les jumelles",
            "Le télescope"
        ],
        goodAnswerNo: 0,
        photoQuestion: "observation",
        photoAnswer: "pollen",
        answerName: "Le microscope",
        answerExplanation: "Le microscope est utilisé pour observer des objets ou des êtres vivants **très petits** (bactéries, cellules, etc.) et n'est donc pas destiné à l'observation du ciel"
    ),
    
    Questions(
        questionValue: "À quelle classe de galaxies appartient M31, la grande galaxie d'Andromède ?",
        questionAnswer: [
            "Les spirales barrées",
            "Les spirales",
            "Les elliptiques",
            "Les irrégulières"
        ],
        goodAnswerNo: 1,
        photoQuestion: "andromeda-2",
        photoAnswer: "andromeda-3",
        answerName: "Les spirales",
        answerExplanation: "La galaxie d'Andromède est, comme la Voie lactée, une galaxie spirale. Elle est l'objet le plus lointain (plus de **2 millions d'années-lumière**) visible à l'oeil nu depuis la Terre."
    )]

let quizzGalaxies05 : [Questions] = [
    
    Questions(
        questionValue: "Une révolution du Soleil autour du centre de la Galaxie dure environ...?",
        questionAnswer: [
            "4 siècles",
            "175.000 ans",
            "250 millions d'années",
            "3,8 milliards d'années"
        ],
        goodAnswerNo: 2,
        photoQuestion: "solar-fury",
        photoAnswer: "systeme-solaire-3",
        answerName: "Environ 250 millions d'années",
        answerExplanation: "Le Soleil met environ 250 millions d'années pour accomplir une révolution complète autour du centre de notre Galaxie, située à environ **26.000 années-lumière**."
    ),
    
    Questions(
        questionValue: "Dans quelle constellation se trouve l'étoile Altaïr ?",
        questionAnswer: [
            "L'Aigle",
            "Hercule",
            "Le Cygne",
            "Orion"],
        goodAnswerNo: 0,
        photoQuestion: "altair",
        photoAnswer: "aigle",
        answerName: "L'Aigle",
        answerExplanation: "L'étoile **Altaïr** appartient à la constellation de l'Aigle. Elle fait partie des **20 étoiles** les plus brillantes du ciel et sa magnitude est de 0,8. Située à environ **17 années-lumière** de la Terre, elle est aussi l'une des étoiles de première grandeur les plus proches de la Terre."
    ),
    
    Questions(
        questionValue: "Dans quelle constellation se situe la célèbre nébuleuse de la Tête de Cheval ?",
        questionAnswer: [
            "Le Sagittaire",
            "Pégase",
            "Le Scorpion",
            "Orion"
        ],
        goodAnswerNo: 3,
        photoQuestion: "tete-de-cheval",
        photoAnswer: "orion-constellation",
        answerName: "Orion",
        answerExplanation: "La nébuleuse de la Tête de Cheval, qui doit son nom à sa forme caractéristique rappelant celle d'un cavalier de jeu d'échecs, est située dans la **constellation d'Orion**. Elle n'est cependant visible qu'avec un grand télescope."
    ),
]

let quizzPhenomenesObservables01 : [Questions] = [

    Questions(
        questionValue: "L’éclipse se fait quand la Lune passe devant...",
        questionAnswer: [
            "Jupiter",
            "Le Soleil",
            "Mars",
            "Ça n'existe pas"
        ],
        goodAnswerNo: 1,
        photoQuestion: "eclipse",
        photoAnswer: "soleil",
        answerName: "Le Soleil",
        answerExplanation: "Une éclipse de Lune ou de Soleil se produit lorsque les **trois corps sont alignés**. L’orbite de la Lune étant inclinée de **5,1 degrés** par rapport au plan de révolution de la Terre autour du Soleil, la Lune va donc la plupart du temps se trouver hors de ce plan et **les éclipses sont par conséquent rares**."),
    
    Questions(
        questionValue: "Comment nomme-t-on un nuage de gaz et de poussières répandu dans l’espace interstellaire ?",
        questionAnswer: [
            "Une nébuleuse",
            "Une comète",
            "Une supernova",
            "Un trou noir"
        ],
        goodAnswerNo: 0,
        photoQuestion: "nebuleuse2",
        photoAnswer: "nebuleuse1",
        answerName: "Une nébuleuse",
        answerExplanation: "**Une nébuleuse** (du latin nebulosis, flou) est, en astronomie, *un objet céleste composé de gaz raréfié, de plasma ou de poussières interstellaires*."
    ),
    
    Questions(
        questionValue: "Cette tache lumineuse est une tempête si gigantesque qu'elle pourrait contenir la Terre. Où se situe-t-elle ?",
        questionAnswer: [
            "Jupiter",
            "Neptune",
            "Saturne",
            "Mercure"
        ],
        goodAnswerNo: 0,
        photoQuestion: "jupiter-red-dot-1",
        photoAnswer: "jupiter-red-dot-2",
        answerName: "Jupiter",
        answerExplanation: "La **Grande Tache rouge** est un gigantesque anticyclone de l'atmosphère de Jupiter situé à 22° sud de latitude. Longue d'environ **15 000 kilomètres** et large de près de **12 000 kilomètres** (en 2015), elle est actuellement **un peu plus grosse que la Terre**."
    )]

let quizzPhenomenesObservables02 : [Questions] = [
    
    Questions(
        questionValue: "Voici l'un des plus grands canyons du système solaire. Où se situe-t-il ?",
        questionAnswer: [
            "Mercure",
            "Saturne",
            "Mars",
            "Terre"
        ],
        goodAnswerNo: 2,
        photoQuestion: "valles-marineris-1",
        photoAnswer: "valles-marineris-2",
        answerName: "Mars",
        answerExplanation: "Le **Valles Marineris** sur Mars s'étire sur plus de 4000 km de long et 200 km de large avec une vertigineuse profondeur de **10 km**. Il est environ dix fois plus long et cinq fois plus profond que le Grand Canyon de la Terre, une taille qui lui vaut le statut du plus grand canyon du système solaire."
    ),
    
    Questions(
        questionValue: "Cette colline ressemble à un visage humain lorsqu'elle est observée d'en haut. Où se trouve-t-elle ?",
        questionAnswer: [
            "Lune",
            "Mars",
            "Jupiter",
            "Uranus"
        ],
        goodAnswerNo: 1,
        photoQuestion: "cydonia-mensae-1",
        photoAnswer: "cydonia-mensae-2",
        answerName: "Mars",
        answerExplanation: "**Cydonia Mensae** est un relief martien (Mensa) situé dans le quadrangle de Mare Acidalium. Il est à l'origine d'un exemple de paréidolie. Le 25 juillet 1976, l'orbiteur Viking 1 survole Mars autour du 41° de latitude nord. C'est lors de ce passage qu'est pris le fameux cliché du *visage de Mars*."
    ),
    
    Questions(
        questionValue: "Ce cratère est également dénommé \"cratère du visage heureux\". Où se trouve-t-il ?",
        questionAnswer: [
            "Uranus",
            "Saturne",
            "Lune",
            "Mars"
        ],
        goodAnswerNo: 3,
        photoQuestion: "happy-face-crater",
        photoAnswer: "mars-orbiter-camera",
        answerName: "Mars",
        answerExplanation: "La MOC (Mars Orbiter Camera) était un puissant télescope de 35 centimètres de diamètre.  C’est elle qui a permis d’immortaliser le **Happy Face crater** de Mars."
    )]
    
let quizzPhenomenesObservables03 : [Questions] = [

    Questions(
        questionValue: "Cet astéroïde est le premier astéroïde connu à avoir pénétré notre système solaire depuis l'espace interstellaire.",
        questionAnswer: [
            "Ouganda",
            "'Oumuamua",
            "Eunomia",
            "Makemake"
        ],
        goodAnswerNo: 1,
        photoQuestion: "oumuamua",
        photoAnswer: "oumuamua-orbit",
        answerName: "'Oumuamua",
        answerExplanation: "Cet objet rocheux, nommé **'Oumuamua**, qui signifie en hawaïen *premier messager d'une contrée lointaine*, a livré des informations venues tout droit des confins de la galaxie. Bien que remarquable, 'Oumuamua n'est qu'un astéroïde parmi des milliers de milliards d'autres dans l'univers."
    ),
    
    Questions(
        questionValue: "Est-il vrai que tous les 420 ans, la Lune prend une couleur verte en raison d'un alignement planétaire particulier ?",
        questionAnswer: [
            "Oui, c'est vrai!",
            "Non",
            "Oui, mais pas pour cette raison",
            "Elle devient violette"
        ],
        goodAnswerNo: 1,
        photoQuestion: "green-moon",
        photoAnswer: "green-moon-hoax",
        answerName: "Non",
        answerExplanation: "Pour la troisième année consécutive, une étrange publication circule sur Facebook. Elle annonce une lune verte pour le 20 avril, un phénomène rarissime qui n’a lieu que tous les 420 ans ! Évidemment, c’est un **canular**."
    ),
    
    Questions(
        questionValue: "À quel moment les jours et les nuits sont presque de durée égale ?",
        questionAnswer: [
            "ça ne se produit jamais",
            "au moment du solstice",
            "au moment de l'équinoxe",
            "plusieurs fois par ans"
        ],
        goodAnswerNo: 2,
        photoQuestion: "equinox-1",
        photoAnswer: "equinox-2",
        answerName: "au moment de l'équinoxe",
        answerExplanation: "Un **équinoxe** est un instant de l'année où le Soleil traverse le **plan équatorial terrestre**, changeant ainsi d'hémisphère céleste. Cette définition astronomique précise la conception préscientifique selon laquelle l'équinoxe est le moment où la durée du jour est égale à celle de la nuit."
    )]

let quizzPhenomenesObservables04 : [Questions] = [
    
    Questions(
        questionValue: "Pendant la phase croissante de la Lune, une mystérieuse \"lueur cendrée\" apparaît. Le reste du disque est alors illuminé par la lumière...",
        questionAnswer: [
            "propre de la Terre",
            "propre de la Lune",
            "du soleil réflechie par la Terre",
            "propre de la Lune cendrée"
        ],
        goodAnswerNo: 2,
        photoQuestion: "ashen-glow-1",
        photoAnswer: "ashen-glow-2",
        answerName: "du soleil réflechie par la Terre",
        answerExplanation: "S’il est techniquement possible d’assister à ce phénomène plusieurs fois par an, en réalité il s’agit d’un fait plutôt **rare**, en particulier pour l’hémisphère Nord. Il faut que les bonnes conditions soient réunies, notamment météorologiques."
    ),
    
    Questions(
        questionValue: "Laquelle de ces mers lunaires n'existe pas ?",
        questionAnswer: [
            "Mer des Pluies",
            "Mer de la Sérénité",
            "Mer du Nectar",
            "Mer de la Liberté"
        ],
        goodAnswerNo: 3,
        photoQuestion: "mer-lunaire-1",
        photoAnswer: "mer-lunaire-2",
        answerName: "Mer de la Liberté",
        answerExplanation: "La mer de la Liberté n'existe pas contrairement aux trois autres proposées, qui sont situées sur la **face visible** de notre satellite et facilement repérables avec des jumelles."
    ),
    
    Questions(
        questionValue: "Comment appelle-t-on une 2ème nouvelle Lune au cours d'un même mois calendaire ?",
        questionAnswer: [
            "lune noire",
            "lune pare",
            "Eclipse lunaire",
            "ça n'existe pas !"
        ],
        goodAnswerNo: 0,
        photoQuestion: "lune-lilith-1",
        photoAnswer: "lune-lilith-2",
        answerName: "lune noire",
        answerExplanation: "La **Lune noire**, appelée aussi **Lune sombre** ou Lune de Lilith (nom de la première épouse légendaire d'Adam, avant Ève), est la phase où il n'y a pas de réflexion solaire et où la face lunaire est dans l'obscurité."
    )]

let quizzPhenomenesObservables05 : [Questions] = [
    
    Questions(
        questionValue: "La plupart des pluies d'étoiles filantes sont dû à...",
        questionAnswer: [
            "des éruptions volcaniques",
            "des étoiles qui tombent du ciel",
            "des débris de comètes",
            "la Lune qui tombe du ciel"
        ],
        goodAnswerNo: 2,
        photoQuestion: "etoiles-filantes-1",
        photoAnswer: "etoiles-filantes-2",
        answerName: "A des débris de comètes",
        answerExplanation: "**Les étoiles filantes** (ou météores) sont causées par des débris de comètes qui brûlent dans notre atmosphère. Ces particules s'échauffent presque **instantanément** en plongeant à très grande vitesse dans la haute atmosphère terrestre faisant briller l'air sur leur passage."
    ),
    
    Questions(
        questionValue: "Quelle phase lunaire est la plus appropriée pour observer les météorites ?",
        questionAnswer: [
            "La nouvelle lune",
            "La phase lunaire n'a aucune importance",
            "La pleine lune",
            "La lune de sang"
        ],
        goodAnswerNo: 0,
        photoQuestion: "etoiles-filantes-3",
        photoAnswer: "etoiles-filantes-4",
        answerName: "la nouvelle lune",
        answerExplanation: "La nouvelle lune permet au ciel d'être **plus sombre**, permettant de mieux voir les météorites."
    ),
    
    Questions(
        questionValue: "À quoi la plupart des pluies de météorites doivent-elles leur nom ?",
        questionAnswer: [
            "Aux planètes",
            "Aux signes du zodiaque",
            "Aux constellations",
            "À l'astrologie"
        ],
        goodAnswerNo: 2,
        photoQuestion: "etoiles-filantes-5",
        photoAnswer: "perseus-constellation",
        answerName: "Aux constellations",
        answerExplanation: "Habituellement, lorsque l'essaim est situé dans une constellation, il prend un nom dérivant de cette dernière. Ainsi, par exemple, le radiant de l'essaim des **Perséides** est situé dans la constellation de Persée."
    )]

let quizzAstronautes01 : [Questions] = [

    Questions(
        questionValue: "Le 3/11/57, elle est devenue le 1er être vivant à aller dans l'Espace, à bord de Spoutnik 2, Quel est son nom ?",
        questionAnswer: [
            "Wernher von Braun",
            "John F. Kennedy",
            "Laïka",
            "Bob"
        ],
        goodAnswerNo: 2,
        photoQuestion: "Astronaute-Question-1",
        photoAnswer: "Astronaute-1",
        answerName: "Laïka",
        answerExplanation: "Laïka (en russe : Лайка, \"petit aboyeur\" ; 1954 – 3 novembre 1957) est une chienne du programme spatial soviétique et le premier être vivant mis en orbite autour de la Terre. Elle est lancée par l'URSS à bord de l'engin spatial Spoutnik 2 le 3 novembre 1957."),
    
    Questions(
        questionValue: "Il est le 1er Français à avoir voyagé dans l'espace, en 1982. Quel est son nom ?",
        questionAnswer: [
            "Jean-Loup Chrétien",
            "Story Musgrave et Jeff Hoffman",
            "Kathryn Thornton",
            "Antoine Gilbert"
        ],
        goodAnswerNo: 0,
        photoQuestion: "Astronaute-Question-2",
        photoAnswer: "Astronaute-2",
        answerName: "Jean-Loup Chrétien",
        answerExplanation: "Jean-Loup Jacques Marie Chrétien, né le 20 août 1938 à La Rochelle, est un général de brigade aérienne français. Il devient le premier Français, le premier francophone et le premier Européen de l'Ouest spationaute en 1982 lors de la mission franco-soviétique PVH à bord de la station Saliout 7."
    ),
    
    Questions(
        questionValue: "Il a accompli un exploit historique qui lui a valu 7 ans de gloire pour l'URSS : il a été le premier homme dans l'espace (108 minutes) au cours de la mission Vostok 1, le 12 avril 1961. Quel est le nom de cet astronaute ?",
        questionAnswer: [
            "Youri Gagarine",
            "John Herschel Glenn, Jr.",
            "Alan Shepard",
            "Jason Bourne"
        ],
        goodAnswerNo: 0,
        photoQuestion: "Astronaute-Question-3",
        photoAnswer: "Astronaute-3",
        answerName: "Youri Gagarine",
        answerExplanation: "Youri Gagarine, né le 9 mars 1934 et mort le 27 mars 1968, est un pilote et cosmonaute soviétique, premier être humain à avoir effectué un vol dans l'espace au cours de la mission Vostok 1, le 12 avril 1961, dans le cadre du programme spatial soviétique."
    )]

let quizzAstronautes02 : [Questions] = [
    
    Questions(
        questionValue: "Il est devenu le cinquième homme à fouler le sol lunaire et le premier à y jouer un peu au golf. Quel est le nom du premier astronaute américain ?",
        questionAnswer: [
            "Youri Gagarine",
            "John Herschel Glenn, Jr.",
            "Alan Shepard",
            "Jason Bourne"
        ],
        goodAnswerNo: 2,
        photoQuestion: "Astronaute-Question-4",
        photoAnswer: "Astronaute-4",
        answerName: "Alan Shepard",
        answerExplanation: "Alan Bartlett Shepard Jr.,  est un aviateur naval, pilote d'essai, astronaute et homme d'affaires américain. En 1961, il devient le premier Américain à voyager dans l'espace et, en 1971, il est le cinquième homme à avoir marché sur la Lune."
    ),
    
    Questions(
        questionValue: "Cet astronaute devint le premier Américain à effectuer un vol orbital, mission Friendship 7, programme Mercury. Quel est son nom ?",
        questionAnswer: [
            "Youri Gagarine",
            "John Herschel Glenn, Jr.",
            "Alan Shepard",
            "Jason Bourne"
        ],
        goodAnswerNo: 1,
        photoQuestion: "Astronaute-Question-5",
        photoAnswer: "Astronaute-5",
        answerName: "John Herschel Glenn, Jr.",
        answerExplanation: "John Glenn, est un astronaute et un homme politique américain. En 1962, à bord de la capsule de la mission spatiale Mercury-Atlas 6, Glenn fait trois fois le tour de la Terre et devient ainsi le premier Américain à effectuer un vol orbital."
    ),
    
    Questions(
        questionValue: "Représenté sur timbre, le premier homme à réaliser une sortie dans l'espace, le 18 mars 1965. Quel est son nom ?",
        questionAnswer: [
            "Alexei Leonov",
            "Valentina Vladimirovna Terechkova",
            "Edward White",
            "Leila Sanchez"
        ],
        goodAnswerNo: 0,
        photoQuestion: "Astronaute-6",
        photoAnswer: "Astronaute-Question-6",
        answerName: "Alexei Leonov",
        answerExplanation: "Alexeï Arkhipovitch Leonov,est un cosmonaute soviétique. Il est le premier homme à avoir réalisé une sortie extravéhiculaire dans l'espace dans le cadre de la mission Voskhod 2, le 18 mars 1965."
    )]

let quizzAstronautes03 : [Questions] = [

    Questions(
        questionValue: "Il est connu comme le premier Américain à avoir réalisé une sortie extravéhiculaire, hors de Gemini 4, le 3 juin 1965. Quel est son nom ?",
        questionAnswer: [
            "Alexei Leonov",
            "Valentina Vladimirovna Terechkova",
            "Edward White",
            "Leila Sanchez"
        ],
        goodAnswerNo: 2,
        photoQuestion: "Astronaute-Question-7",
        photoAnswer: "Astronaute-7",
        answerName: "Edward White",
        answerExplanation: "Edward « Ed » Higgins White II, né le 14 novembre 1930 à San Antonio et mort accidentellement le 27 janvier 1967 au centre spatial Kennedy à Cap Canaveral, est un astronaute américain. Il meurt dans l'incendie d'Apollo 1 avec Virgil Grissom et Roger Chaffee."
    ),
    
    Questions(
        questionValue: "Les 3 membres d'Apollo 8 sont un peu dans l'ombre des missions qui suivront, qui est cet équipage ?",
        questionAnswer: [
            "Franck Borman, James Lovell et William Anders",
            "Neil Amrstrong, Buzz Aldrin et Michael Collins",
            "Neil Amrstrong",
            "Alexei Leonov, Youri Gagarine et Maxime Guerrain"
        ],
        goodAnswerNo: 0,
        photoQuestion: "Astronaute-Question-8",
        photoAnswer: "Astronaute-8",
        answerName: "Franck Borman, James Lovell et William Anders",
        answerExplanation: "Apollo 8 est le premier vaisseau spatial avec équipage à quitter l'orbite terrestre basse et le premier à atteindre la Lune, s'y mettre en orbite et en revenir. Ils sont les premiers à se rendre à proximité de la Lune, à assister à un lever de Terre, à le photographier et à échapper à la gravité d'un corps céleste."
    ),
    
    Questions(
        questionValue: "De cet équipage provient également le deuxième homme à avoir marché sur la Lune, qui sont-ils ?",
        questionAnswer: [
            "Franck Borman, James Lovell et William Anders",
            "Buzz Aldrin et Michael Collins",
            "Neil Amrstrong",
            "Alexei Leonov, Youri Gagarine et Maxime Guerrain"
        ],
        goodAnswerNo: 1,
        photoQuestion: "Astronaute-Question-9",
        photoAnswer: "Astronaute-9",
        answerName: "Buzz Aldrin et Michael Collins",
        answerExplanation: "Leur exploit les a rendus immortels. Neil Armstrong, Buzz Aldrin et Michael Collins, les premiers hommes à s'être posés sur la Lune, puis à y avoir marché (sauf Collins, resté dans le module lunaire) sont connus internationalement. Leurs personnalités, très différentes, le sont moins."
    )]

let quizzAstronautes04 : [Questions] = [

        Questions(
            questionValue: "Trouvez les 2 premiers humains à rouler le rover lunaire, qu'on a inséré dans le module lunaire Falcon:",
            questionAnswer: [
                "Robert Crippen et John Young",
                "Guennadi Padalka",
                "David Scott et Jim Irwin",
                "Bruce Gadéa et Bryan Sixtine"
            ],
            goodAnswerNo: 2,
            photoQuestion: "Astronaute-Question-10",
            photoAnswer: "Astronaute-10",
            answerName: "David Scott et Jim Irwin",
            answerExplanation: "David Scott, est un militaire, pilote d'essai, astronaute et homme d'affaires américain. Il est le septième des douze hommes ayant foulé le sol lunaire à ce jour. James Benson Irwin, est un astronaute américain. Il est le huitième des douze hommes ayant foulé le sol lunaire à ce jour."
        ),
    
    Questions(
        questionValue: "Trouvez le nom des astronautes faisant partie de la mission du Space Shuttle Columbia, la STS-1 est le 1er vol d'une navette spatiale:",
        questionAnswer: [
            "Robert Crippen et John Young",
            "Guennadi Padalka",
            "David Scott et Jim Irwin",
            "Bruce Gadéa et Bryan Sixtine"
        ],
        goodAnswerNo: 2,
        photoQuestion: "Astronaute-Question-11",
        photoAnswer: "Astronaute-11",
        answerName: "Robert Crippen et John Young",
        answerExplanation: "Imaginez l'exploit : à la rentrée, les pilotes ont déclaré avoir eu l'impression \"de voler à l'intérieur d'un tube néon\". Pour une 1ère fois, ils avaient un pare-brise et étaient aux loges, aux commandes, sans savoir que 14 tuiles de protection thermique manquaient et 148 étaient endommagées."
    ),
    
    Questions(
        questionValue: "Ce Russe est le cosmonaute ayant vécu le plus longtemps (à l'époque) dans l'espace avec une durée de séjour cumulée de 878 jours. Quel est le nom du héros de cet exploit ?",
        questionAnswer: [
            "Robert Crippen et John Young",
            "Guennadi Padalka",
            "David Scott et Jim Irwin",
            "Bruce Gadéa et Bryan Sixtine"
        ],
        goodAnswerNo: 1,
        photoQuestion: "Astronaute-Question-12",
        photoAnswer: "Astronaute-12",
        answerName: "Guennadi Padalka",
        answerExplanation: "Guennadi Ivanovitch Padalka est un cosmonaute russe. Il effectue un premier séjour de longue durée dans l'espace à bord de la station spatiale Mir en 1998-1999 puis fait partie de l'équipage de la Station spatiale internationale à quatre reprises entre 2002 et 2015, en tant que commandant."
    )]

let quizzAstronautes05 : [Questions] = [
    
    Questions(
        questionValue: "Le sauvetage du télescope spatial Hubble, par la navette Endeavour STS-61, constitue un exploit. Qui sont les 2 sauveteurs ?",
        questionAnswer: [
            "Jean-Loup Chrétien",
            "Story Musgrave et Jeff Hoffman",
            "Kathryn Thornton",
            "Antoine Gilbert"
        ],
        goodAnswerNo: 1,
        photoQuestion: "Astronaute-Question-13",
        photoAnswer: "Astronaute-13",
        answerName: "Story Musgrave et Jeff Hoffman",
        answerExplanation: "Il a d'abord fallu récupérer l'engin de 12 tonnes souffrant d'un défaut de fabrication à son miroir principal. Il a été fixé dans les soutes puis, on lui installa un dispositif correcteur. Story Musgrave et Jeff Hoffman ont fait 5 (6 à 8 heures fois) sorties dans l'espace"
    ),
    
    Questions(
        questionValue: "Combien mesurait Youri Gagarine, le premier homme placé en orbite autour de la Terre ?",
        questionAnswer: [
            "1m69",
            "1m74",
            "1m79",
            "1m84"
        ],
        goodAnswerNo: 0,
        photoQuestion: "Astronaute-Question-14",
        photoAnswer: "Astronaute-14",
        answerName: "1 mètre 69",
        answerExplanation: "Youri Gagarine ne mesurait que 1 mètre 69, ce qui était un avantage indéniable compte tenu de l'étroitesse de la cabine Vostok (à bord de laquelle il effectua son vol historique)."
    ),
    
    Questions(
        questionValue: "Qui fut la première femme dans l'espace ?",
        questionAnswer: [
            "Claudie Haigneré",
            "Sally Ride",
            "Kathy Sullivan",
            "Valentina Vladimirovna Terechkova"
        ],
        goodAnswerNo: 3,
        photoQuestion: "Astronaute-Question-15",
        photoAnswer: "Astronaute-15",
        answerName: "Valentina Vladimirovna Terechkova",
        answerExplanation: "La première femme dans l'espace fut la soviétique Valentina Terechkova. Du 16 au 19 juin 1963, aux commandes du vaisseau Vostok 6, elle effectua 48 tours de la Terre."
    )]
