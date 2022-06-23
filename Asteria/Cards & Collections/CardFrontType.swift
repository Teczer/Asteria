//
//  CardFrontType.swift
//  Asteria
//
//  Created by Apprenant 87 on 23/06/2022.
//

import SwiftUI

struct CardFrontType: Identifiable {
    var id = UUID()
    var cardTitle: String
    var cardFrontImage: String
    var collectionName: String
    var cardNumber: String
    var miniCard: Bool
}
