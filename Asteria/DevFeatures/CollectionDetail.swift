//
//  CollectionDetail.swift
//  Asteria
//
//  Created by Apprenant 87 on 22/06/2022.
//
//  Reste à faire sur cet élément :
//  - dans la boucle ForEach, ajouter un navigation link vers la single card
//  - ajouter le lien au bouton pour scroll (la meilleure solution semble être avec le ScrollViewReader, mais pas réussi pour l'instant)

import SwiftUI

struct CollectionDetail: View {
    
    //  A METTRE DANS UN FICHIER DATA (LIGNES 14 À 38)
    
//    let allCollections = [collection1, collection2]
    
    let collection1 = CollectionType (
        collectionName: "S Y S T È M E  S O L A I R E",
        collectionImages: ["collection1-image-1",
                           "collection1-image-2",
                           "collection1-image-3",
                           "collection1-image-4",
                           "collection1-image-5",
                           "collection1-image-6",
                           "collection1-image-7",
                           "collection1-image-8",
                           "collection1-image-9"])

    let collection2 = CollectionType (
        collectionName: "G A L A X I E S",
        collectionImages: ["collection2-image-1",
                           "collection2-image-2",
                           "collection2-image-3",
                           "collection2-image-4",
                           "collection2-image-5",
                           "collection2-image-6",
                           "collection2-image-7",
                           "collection2-image-8",
                           "collection2-image-9"])

    var collection: CollectionType
    
    let rows = [GridItem(.flexible())]
    
    var body: some View {
    
        VStack {
            
            // NOM DE LA COLLECTION
            HStack {
                Text(collection.collectionName)
                    .font(.title2)
                    .padding(.leading, 30)
                    .padding(.top, 30)
                
            Spacer()
            }
            
        ZStack {
        
        Rectangle()
            .fill(Color("OrchidCrayola"))
            .opacity(0.4)
            .frame(width: 390, height: 118)
            
        // SCROLLVIEW IMAGES DE LA COLLECTION
        ScrollView(.horizontal) {
            
            LazyHGrid(rows : rows, alignment: .center, spacing: 40) {
                ForEach(collection.collectionImages, id: \.self) {
                    img in Image(img)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 93, height: 186)
                                .clipped()
                                .cornerRadius(20)
                                .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color("CarnationPink"), lineWidth: 1))
                                .shadow(color: Color.white, radius: 10)
                                .id(img)
                    
                    // AJOUTER ICI LE NAVIGATION LINK VERS L'ÉCRAN SINGLE CARD
                    
                        } // fin for each
                    } // fin lazygrid
            
                } // fin scroll view
            .frame(width: 390, height: 230)
            
            // OMBRES
            HStack {
            Rectangle()
                .fill(.black)
                .frame(width: 35, height: 250)
                .blur(radius: 10)

            Spacer(minLength: 350)

            Rectangle()
                .fill(.black)
                .frame(width: 35, height: 250)
                .blur(radius: 10)
                }
            
            // BOUTON POUR SCROLL
            HStack {
                
                Spacer()
                
                Image(systemName: "chevron.right.circle.fill")
                    .resizable()
                    .foregroundStyle(.white, Color("CarnationPink"))
                    .frame(width: 40, height: 40)
                    .shadow(color: Color.white, radius: 5)
                    .padding(.trailing, 30)
            }
             
        } // fin zstack
        }
    }
}

struct CollectionDetail_Previews: PreviewProvider {
    static var previews: some View {
        CollectionDetail(collection: collection1)
            .preferredColorScheme(.dark)
            
    }
}
