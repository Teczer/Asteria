//
//  CollectionView.swift
//  Asteria
//
//  Created by Apprenant 87 on 20/06/2022.
//



import SwiftUI


struct CollectionView: View {
        
    var body: some View {
        
        NavigationView {
        
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .opacity(0.3)
                    
                VStack {
                
                ScrollView {
                
                    CollectionDetail(collection: collection1)
                    
                    CollectionDetail(collection: collection2)
                    
                    CollectionDetail(collection: collection3)
                    
                    CollectionDetail(collection: collection4)
                    
                }
            
                }
                
                .navigationTitle("Collections".uppercased())
                .navigationBarTitleDisplayMode(.inline)
                
            }
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
            .preferredColorScheme(.dark)
            
    }
}
