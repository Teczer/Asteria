//
//  ViewRouter.swift
//  Asteria
//
//  Created by Apprenant 67 on 17/06/2022.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .aventure
    @Published var hideAventure: Bool = false
}

enum Page {
     case collection
     case aventure
     case profil
 }
