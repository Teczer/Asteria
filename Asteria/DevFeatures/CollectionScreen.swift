//
//  CollectionScreen.swift
//  Asteria
//
//  Created by Apprenant 87 on 20/06/2022.
//

import SwiftUI

struct CollectionScreen: View {
    
    let items = 1...10
    
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
    
//    navigation view
        
        ZStack {
            
        Image("card-background-image")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            
        Rectangle()
                .fill(Color("OrchidCrayola"))
                .opacity(0.4)
                .frame(width: 390, height: 118)
            
        ScrollView(.horizontal) {
            LazyHGrid(rows : rows, alignment: .center, spacing: 80) {
                ForEach(items, id: \.self) {
                    item in Image(systemName: "\(item).circle.fill")
                            .font(.largeTitle)
                    }
                }
            } // fin scroll view
//            .padding(.leading, 50)
            .frame(width: 330, height: 150)
            
            HStack {
            Rectangle()
                    .fill(.black)
                .frame(width: 85, height: 220)
                .blur(radius: 30)
            
            Spacer()
            
            Rectangle()
                    .fill(.black)
                .frame(width: 85, height: 220)
                .blur(radius: 30)
            }

            
        }
    }
}

struct CollectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        CollectionScreen()
    }
}
