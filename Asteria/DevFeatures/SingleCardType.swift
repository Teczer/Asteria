//
//  SingleCardType.swift
//  Asteria
//
//  Created by Apprenant 87 on 23/06/2022.
//

import SwiftUI

struct SingleCardType: Identifiable {
    var id = UUID()
    var cardFront: CardFrontType
    var cardBack: CardBackType
    
}
