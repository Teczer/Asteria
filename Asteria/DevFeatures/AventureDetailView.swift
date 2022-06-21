//
//  AventureDetailView.swift
//  Asteria
//
//  Created by apprenant50 on 21/06/2022.
//

import SwiftUI

struct AventureDetailView: View {
    let gamePlay: TextPlay
    var body: some View {
       
            ZStack {
                Image(gamePlay.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 200)
                VStack{
                
                Text(gamePlay.textLevel)
                    .font(.custom("Montserrat", size: 12))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text(gamePlay.textTitle)
                    .font(.custom("Montserrat", size: 15))
                    .foregroundColor(.white)
                    
            }
        }
    }
}


struct AventureDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AventureDetailView(gamePlay: TextPlay(textLevel: "NIVEAU 1", textTitle: "AUTOUR DE LA TERRE", image: "level1"))
    }
}
