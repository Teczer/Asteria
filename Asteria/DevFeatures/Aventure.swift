//
//  Aventure.swift
//  Asteria
//
//  Created by apprenant50 on 20/06/2022.
//

import SwiftUI

struct Aventure: View {
    
    var body: some View {
        ScrollView{
            ScrollViewReader{ value in
                ForEach(gamePlay.reversed()){
                    gamePlay in
                    AventureDetailView(gamePlay: gamePlay)
                }.onAppear{
                    value.scrollTo(gamePlay.first!.id)
                }
            }
        }
    }
}




struct Aventure_Previews: PreviewProvider {
    static var previews: some View {
        Aventure()
    }
}

