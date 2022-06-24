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

    Questions(questionValue: "Quel est le nom du premier satellite artificiel envoyé en orbite autour de la Terre ?", questionAnswer: ["Apollo", "Ariane", "Mir", "Spoutnik"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "SPOUTNIK", answerExplanation: "Le premier satellite artificiel, **Spoutnik**, a été envoyé par l'URSS en 1957. **Apollo** est le nom des vols habités américains vers la Lune. **Ariane** est le nom d'une série de fusées européennes. Enfin, **Mir** était une station spatiale russe."),
    
    Questions(questionValue: "Combien y a-t-il de planètes dans le système solaire ?", questionAnswer: ["5", "15", "17", "8"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "8", answerExplanation: "Depuis Août 2006, **Pluton** n'est plus considérée comme une planète, donc notre système solaire ne compte plus que **8 planètes**."),
    
    Questions(questionValue: "Quelles sont les deux grandes catégories de planètes ?", questionAnswer: ["Solide et Liquide", "Rocheuse et gazeuze", "Tellurique et Rocheuse", "Liquide et Gazeuze"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "Rocheuse et gazeuze", answerExplanation: "Notre système solaire contient les **deux types de planètes**. Mercure, Vénus, la Terre et Mars sont des **planètes rocheuses** aussi appelées **« planètes tellurique »** alors que Jupiter, Saturne, Uranus et Neptune sont des **planètes gazeuses**."),
    
    Questions(questionValue: "Quelle est la plus grande planète du système solaire ?", questionAnswer: ["Jupiter", "Mars", "Vénus", "Saturne"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "JUPITER", answerExplanation: "**Jupiter** est la plus grande planète du Système solaire. Elle est plus de **onze fois plus grosse que la Terre**."),
    
    Questions(questionValue: "En quelle année Pluton a-t-elle été reclassée en tant que planète naine ?", questionAnswer: ["1998", "2013", "2006", "2020"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "2006", answerExplanation: "Depuis Août 2006, **Pluton** n'est plus considérée comme une planète, elle a donc été classée comme **planète naine**"),
    
    Questions(questionValue: "Combien de satellites naturels Jupiter possède-t-elle ?", questionAnswer: ["1", "79", "2", "4"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "79", answerExplanation: "On connaît 80 satellites naturels de Jupiter, dont **79 confirmés**, dont 72 numérotés, dont 57 nommés."),
    
    Questions(questionValue: "Combien de temps faut-il à la Terre pour effectuer un tour complet autour du Soleil ?", questionAnswer: ["120 jours", "48 heures", "365 jours", "2000 ans"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "365 jours", answerExplanation: "Un tour complet du circuit dure **365 jours 5 heures, 48 minutes et 45 secondes**."),
    
    Questions(questionValue: "Qui a marché le premier sur la Lune ?", questionAnswer: ["Charlie Duke", "Buzz Aldrin", "Neil Armstrong", "François Pescquet"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "Neil Armstrong", answerExplanation: "Le 16 juillet 1969, les trois astronautes américains de la mission Apollo 11, Neil Armstrong, Buzz Aldrin et Michael Collins, décollaient pour la Lune depuis la Floride, **Neil Armstrong est le premier homme a avoir posé son pied sur la lune**"),
    
    Questions(questionValue: " Quel est l'âge du système solaire ?", questionAnswer: ["1 million d'années", "4,5 milliards d'années", "2022 ans", "4000 ans"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "4,567 milliards d'années", answerExplanation: "**L’âge de la Terre**, et celui du **système solaire**, est de **4,567 milliards d’années**, avec une incertitude de quelques dizaines de millions d’années. C’est une connaissance aujourd’hui stabilisée."),
    
    Questions(questionValue: "Quelle planète surnomme-t-on \"l'étoile du berger\"?", questionAnswer: ["Mars", "Appolon", "Mercure", "Vénus"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "VENUS", answerExplanation: "L'expression **« étoile du Berger »** est très ancienne. Autrefois, les gardiens de troupeaux qui vivaient au rythme des jours et des nuits, tout au long de l'année, guettaient l'apparition de la première étoile dans le ciel, le soir, pour rentrer à la bergerie. En réalité, celle que l'on désigne **« étoile du Berger »** n'est pas une étoile mais une planète. Il s'agit de **Vénus**."),
    
    Questions(questionValue: "Existe-t-il d'autres systèmes solaires dans l'univers ?", questionAnswer: ["Personne ne sait", "non", "oui", "peut-être"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "OUI", answerExplanation: "Le premier système planétaire découvert autour d'une étoile de type solaire en dehors du Système solaire est celui de l'étoile 51 Pegasi en 1995. Depuis ce temps, **des centaines de planètes extra-solaires ont été découvertes**."),
    
    Questions(questionValue: "Quelle est la distance Terre-Soleil ?", questionAnswer: ["1 année lumière", "150 million de km", "300 million de km", "5 années lumières"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "150 million de km", answerExplanation: "L'unité astronomique (au) est l'unité de mesure correspondant à la distance moyenne qui sépare la Terre du Soleil, soit **environ 150 millions de km** (exactement 149 597 870,7 km)."),
    
    Questions(questionValue: "Combien y a-t-il de planètes telluriques dans le système solaire ?", questionAnswer: ["4", "5", "6", "7"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "4", answerExplanation: "**Les planètes telluriques sont rocheuses et riches en éléments chimiques divers et variés**. Elles ont une surface solide sur laquelle nous pouvons marcher ou encore y déposer des sondes pour les étudier. Dans notre système planétaire, ce sont **les planètes les plus proches du Soleil**."),
    
    Questions(questionValue: "Combien y a-t-il de planètes gazeuses dans le système solaire?", questionAnswer: ["2", "4", "6", "8"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "4", answerExplanation: "**Les planètes gazeuses sont principalement composées d'hydrogène et d'hélium** et généralement ont une faible densité, une rotation rapide, des atmosphères épaisses, des anneaux et beaucoup de satellites **Jupiter, Saturne, Uranus, et Neptune**."),
    ]

let quizzGalaxies : [Questions] = [

    Questions(questionValue: "Combien y a-t-il d'étoiles dans notre galaxie ?", questionAnswer: ["1 million", "100 000", "entre 200 et 400 milliards", "1 milliard"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "entre 200 et 400 milliards", answerExplanation: " La Voie Lactée : c’est un gigantesque disque de 100 000 années-lumière de diamètre qui contient entre 200 et 400 milliards d’étoiles. Et notre Soleil est en fait l’une de ces étoiles."),
    
    Questions(questionValue: "Quel est le surnom de notre galaxie ?", questionAnswer: ["La Voie Lactée", "La Bande Blanche", "Le Nuage Galactique", "La Salsa Blanche"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "LA VOIE LACTEE", answerExplanation: "La Voie Lactée: **Galaxie** dans laquelle se trouve le Soleil avec son cortège de planètes (dont la Terre) ; **la Voie lactée, également appelée Galaxie** – avec une majuscule –, se présente comme une bande blanchâtre, floue, irrégulière, qui ceinture tout le ciel étoilé."),
    
    Questions(questionValue: "Qu'est-ce qu'une exoplanète ?", questionAnswer: ["Une planète naine", "Une planète morte", "Une planète riche", "Une planète située dans un autre système solaire"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "Une planète située dans un autre système solaire", answerExplanation: "Une **exoplanète**, ou **planète extrasolaire**, est une planète située **en dehors du Système solaire**."),
    
    Questions(questionValue: "A quelle vitesse notre système solaire avance-t-il dans la galaxie ?", questionAnswer: ["1 000 km/h", "300 000 km/s", "820 000 km/h", "1 km/s"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "820 000 km/h", answerExplanation: "Au-delà de la rotation de la Terre sur elle-même, la Terre subit de nombreux mouvements ! Elle tourne autour du Soleil à une vitesse de 30 km/s, soit plus de 100 000 km/h. Le **système solaire** est entraîné autour du centre de la Galaxie à une **vitesse de 820 000 km/h**."),
    
    Questions(questionValue: "Vers quelle constellation notre système solaire se dirige-t-il ?", questionAnswer: ["Hercule", "Orion", "La Lyre", "La Grande Ourse"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "HERCULE", answerExplanation: "En 1783, **Herschel** découvre que **le Soleil possède un mouvement propre** et qu'il entraîne tout son cortège de planètes **en direction d'un point situé dans la constellation d'Hercule** : l'Apex."),
    
    Questions(questionValue: "Où naissent les étoiles ?", questionAnswer: ["Dans les trous noirs", "N'importe où", "Dans les nébuleuses", "Du Big Bang"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "DANS LES NEBULEUSES", answerExplanation: "Comme les humains, **les étoiles naissent, grandissent et meurent**. **Leurs berceaux** sont d'immenses nuages froids de gaz et de poussière que l'on appelle des « **nébuleuses** ». La plus célèbre d'entre elles est la nébuleuse d'Orion, qui est visible à l'œil nu."),
    
    Questions(questionValue: "Quelle est la galaxie la plus proche de la Voie Lactée ?", questionAnswer: ["La Galaxie du Sombrero", "La Galaxie d'Andromède", "La Galaxie des Chiens de Chasse", "La Galaxie du Cigare"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "LA GALAXIE D'ANDROMEDE", answerExplanation: "**La galaxie d'Andromède (M31)** est la **plus proche** et la plus grande voisine **de notre Voie lactée**. Les astronomes estiment que toutes les deux entreront en collision d'ici quatre milliards d'années."),
    
    Questions(questionValue: "Comment surnomme-t-on le bras galactique dans lequel se trouve notre système solaire ?", questionAnswer: ["Le bras droit", "Le bras de Persée", "Le bras d'Orion", "Le bras de La Lyre"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "LE BRAS D'ORION", answerExplanation: "**Le bras spiral d'Orion** ou, simplement, le **bras d'Orion** (également appelé bras local ou avec son nom complet bras d'Orion-Cygne) est un bras spiral mineur de notre galaxie, la Voie lactée. **C'est dans ce bras que se situe le Système solaire**."),
    
    Questions(questionValue: "Quels objets célestes servent de repères géographiques pour les GPS ?", questionAnswer: ["Les quasars", "Les étoiles filantes", "Les planètes", "Les Satellites"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "LES QUASARS", answerExplanation: "**Les quasars** sont des **astres distants**, qui apparaissent comme des étoiles très brillantes lorsqu'on les observe au télescope, mais dont on sait aujourd'hui que ce **sont des exemples de ce que l'on appelle des noyaux actifs de galaxies**"),
    
    Questions(questionValue: "La Voie Lactée est une galaxie...", questionAnswer: ["... de type spirale", "... de type lenticulaire", "... de type rectangulaire", "... de type elliptique"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "... DE TYPE SPIRALE", answerExplanation: "**Une galaxie spirale** est un type de galaxie contenant jusqu'à plusieurs centaines de milliards d'étoiles et qui **adopte la forme aplatie d'un disque**, avec un **renflement central sphérique lumineux** appelé le **bulbe**. Les galaxies spirales contiennent également, et de façon variable, des quantités importantes de gaz et de poussières. Autour du disque, il existe également un halo moins dense et plus discret, aux étoiles fréquemment regroupées en amas globulaires."),
    
    Questions(questionValue: " Lequel de ces instruments ne sert pas à observer le ciel ?", questionAnswer: ["Le microscope", "La lunette", "Les jumelles", "Le télescope"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "LE MICROSCOPE", answerExplanation: "**Le microscope** est utilisé pour **observer des objets ou des êtres vivants très petits** (bactéries, cellules, etc.) et n'est donc pas destiné à l'observation du ciel"),
    
    Questions(questionValue: " A quelle classe de galaxies appartient M31, la grande galaxie d'Andromède ?", questionAnswer: ["Les spirales barrées", "Les spirales", " Les elliptiques", "Les irrégulières"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "LES SPIRALES", answerExplanation: "**La galaxie d'Andromède** est, comme la Voie lactée, une **galaxie spirale**. Elle est l'objet le plus lointain (plus de 2 millions d'années-lumière) visible à l'oeil nu depuis la Terre"),
    
    Questions(questionValue: "Combien de temps dure une révolution du Soleil autour du centre de la Galaxie ?", questionAnswer: ["Environ 4 siècles", "Environ 175.000 ans", "Environ 250 millions d'années", "Environ 3,8 milliards d'années"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "Environ 250 millions d'années", answerExplanation: "**Le Soleil met environ 250 millions d'années** pour accomplir une **révolution complète** autour du centre de **notre Galaxie**, situé à environ 26.000 années-lumière."),
    
    Questions(questionValue: "Dans quelle constellation se trouve l'étoile Altaïr ?", questionAnswer: ["L'Aigle", "Hercule", "Le Cygne", "Orion"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "L'AIGLE", answerExplanation: "**L'étoile Altaïr** appartient à la constellation de **l'Aigle**. Elle fait partie des 20 étoiles les plus brillantes du ciel et sa magnitude est de 0,8. Située à environ 17 années-lumière de la Terre, elle est aussi l'une des étoiles de première grandeur les plus proches de la Terre"),
    
    Questions(questionValue: "Dans quelle constellation se situe la célèbre nébuleuse de la Tête de Cheval ?", questionAnswer: ["Le Sagittaire", "Pégase", "Le Scorpion", "Orion"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: "**La nébuleuse de la Tête de Cheval**, qui doit son nom à sa forme caractéristique rappelant celle d'un cavalier de jeu d'échecs, est **situé dans la constellation d'Orion**. Elle n'est cependant visible qu'avec un grand télescope."),
]

let quizzPhenomeneObservable : [Questions] = [

    Questions(questionValue: "L’éclipse se fait quand la Lune passe devant...", questionAnswer: ["Jupiter", "Le Soleile", "Mars", "ça n'existe pas"], goodAnswerNo: 1, photoQuestion: "eclipse", photoAnswer: "soleil", answerName: "SOLEIL", answerExplanation: "**Une éclipse de Lune ou de Soleil** se produit lorsque les **trois corps sont alignés**. Si l’orbite de la Lune autour de la Terre et celle de notre planète autour du Soleil étaient dans le même plan, il se produirait une éclipse de Soleil et une éclipse de Lune chaque mois. **Mais l’orbite de la Lune est inclinée de 5,1 degrés par rapport au plan de révolution de la Terre autour du Soleil**, la Lune va donc la plupart du temps se trouver hors de ce plan et **les éclipses sont par conséquent rares**."),
    
    Questions(questionValue: "Comment nomme-t-on un nuage de gaz et de poussières répandu dans l’espace interstellaire ?", questionAnswer: ["Une nébuleuse", "Une comète", "Une supernova", "Un trou noir"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "Une nébuleuse", answerExplanation: "**Une nébuleuse** (du latin nebulosis, flou) est, en astronomie, **un objet céleste composé de gaz raréfié, de plasma ou de poussières interstellaires**."),
    
    Questions(questionValue: "Cette tache lumineuse est une tempête si gigantesque qu'elle pourrait contenir la Terre. Où se situe-t-elle ?", questionAnswer: ["Jupiter", "Neptune", "Saturne", "Mercure"], goodAnswerNo: 0, photoQuestion: "", photoAnswer: "", answerName: "Jupiter", answerExplanation: "**La Grande Tache rouge** est un gigantesque anticyclone de l'atmosphère de Jupiter situé à 22° sud de latitude. **Longue d'environ 15 000 kilomètres et large de près de 12 000 kilomètres (2015)**, elle est actuellement un peu **plus grosse que la Terre**, même si elle a atteint des dimensions bien supérieures par le passé."),
    
    Questions(questionValue: "Voici l'un des plus grands canyons du système solaire. Où se situe-t-il ?", questionAnswer: ["Mercure", "Saturne", "Mars", "Terre"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "Mars", answerExplanation: "**Le Valles Marineris** sur Mars s'étire sur plus de **4000 km de long et 200 km de large** avec une vertigineuse **profondeur de 10 km**. Il est environ dix fois plus long et cinq fois plus profond que le Grand Canyon de la Terre, une taille qui lui vaut le statut du plus grand canyon du système solaire."),
    
    Questions(questionValue: "Cette colline ressemble à un visage humain lorsqu'elle est observée d'en haut. Où se trouve-t-elle ?", questionAnswer: ["Lune", "Mars", "Jupiter", "Uranus"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "Mars", answerExplanation: "**Cydonia Mensae** est un relief martien (Mensa) situé dans le quadrangle de Mare Acidalium. Il est à l'origine d'un exemple de **paréidolie**. Le 25 juillet 1976, au cours de sa 35e orbite, l'orbiteur Viking 1 survole Mars autour du 41° de latitude nord. C'est lors de ce passage qu'est pris le fameux cliché du **« visage de Mars »**. Si les scientifiques y voient un banal jeu d'ombres et lumière sur le relief, à l'époque, certains passionnés de vie extraterrestre ont cru y déceler une structure artificielle."),
    
    Questions(questionValue: "Ce cratère est également dénommé « cratère du visage heureux ». Où se trouve-t-il ?", questionAnswer: ["Uranus", "Saturne", "Lune", "Mars"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "Mars", answerExplanation: "la MOC (Mars Orbiter Camera), était un puissant télescope de 35 centimètres de diamètre.  C’est elle qui a permis d’immortaliser le **Happy Face crater de Mars**."),
    
    Questions(questionValue: "Cet astéroïde est le premier astéroïde connu à avoir pénétré notre système solaire depuis l'espace interstellaire.", questionAnswer: ["Ouganda", "'Oumuamua", "Eunomia", "Makemake"], goodAnswerNo: 1, photoQuestion: "Oumuamua", photoAnswer: "", answerName: "Oumuamua", answerExplanation: "Cet objet rocheux, nommé **« 'Oumuamua »**, qui signifie en hawaïen **« premier messager d'une contrée lointaine »**, a livré des informations venues tout droit des confins de la galaxie. Bien que remarquable, 'Oumuamua n'est qu'un astéroïde parmi des milliers de milliards d'autres dans l'univers."),
    
    Questions(questionValue: "Est-il vrai que tous les 420 ans, la Lune prend une couleur verte en raison d'un alignement planétaire particulier ?", questionAnswer: ["Oui, c'est vrai!", "Non", "Oui, mais pas pour cette raison", "Elle devient violette"], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "Non", answerExplanation: "Pour la troisième année consécutive, une étrange publication circule sur Facebook. Elle annonce une lune verte pour le 20 avril, un phénomène rarissime qui n’a lieu que tous les 420 ans ! Évidemment, c’est un **canular**."),
    
    Questions(questionValue: "À quel moment les jours et les nuits sont presque de durée égale ?", questionAnswer: ["ça ne se produit jamais", "au moment du solstice", "au moment de l'équinoxe", "plusieurs fois par ans"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "au moment de l'équinoxe", answerExplanation: "Un **équinoxe** est un instant de l'année où le **Soleil traverse le plan équatorial terrestre**, changeant ainsi d'hémisphère céleste. Cette définition astronomique précise la conception préscientifique selon laquelle **l'équinoxe est le moment où la durée du jour est égale à celle de la nuit**."),
    
    Questions(questionValue: "Pendant la phase croissante de la Lune, une mystérieuse « lueur cendrée » apparaît, illuminant le reste du disque. Quelle est la nature de ce phénomène ?", questionAnswer: ["le reste du disque est illuminé par la lumière propre de la Terre", "Le reste du disque est illuminé par la lumière propre de la Lune", "Le reste du disque est illuminé par la lumière du soleil réflechie par la Terre", "Le reste du disque est illuminé par la lumière propre de la Lune cendrée"], goodAnswerNo: 2, photoQuestion: "", photoAnswer: "", answerName: "Le reste du disque est illuminé par la lumière du soleil réflechie par la Terre", answerExplanation: "S’il est techniquement possible d’assister à ce phénomène plusieurs fois par an, en réalité il s’agit d’un fait plutôt rare, en particulier pour l’hémisphère Nord. En effet, il faut que les bonnes conditions soient réunies, notamment météorologiques. Le mauvais temps et les nuages empêchent souvent de percevoir pleinement la **“lumière cendrée”**. Il est plus facile à constater en plein été lorsque **la terre renvoie plus de soleil sur la Lune**."),
    
    Questions(questionValue: "Laquelle de ces mers lunaires n'existe pas ?", questionAnswer: ["Mer des Pluies", "Mer de la Sérénité", "Mer du Nectar", "Mer de la Liberté"], goodAnswerNo: 3, photoQuestion: "", photoAnswer: "", answerName: "Mer de la Liberté", answerExplanation: "La mer de la Liberté n'existe pas contrairement aux **trois autres proposées**, qui **sont situées sur la face visible de notre satellite** et facilement **repérables avec des jumelles**."),
    
    Questions(questionValue: "", questionAnswer: ["", "", "", ""], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "", questionAnswer: ["", "", "", ""], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "", questionAnswer: ["", "", "", ""], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
    
    Questions(questionValue: "", questionAnswer: ["", "", "", ""], goodAnswerNo: 1, photoQuestion: "", photoAnswer: "", answerName: "", answerExplanation: ""),
]
