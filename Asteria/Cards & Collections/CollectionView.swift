//
//  CollectionView.swift
//  Asteria
//
//  Created by Apprenant 87 on 20/06/2022.
//



import SwiftUI


struct CollectionView: View {
    @StateObject var viewRouter: ViewRouter
        
    var body: some View {
        
        NavigationView {
        
            ZStack {
                BlurredBackground(name: "background")
                
                VStack {
                
                ScrollView {
                
                    CollectionDetail(collection: collection1)
                    
                    CollectionDetail(collection: collection3)
                    
                    CollectionDetail(collection: collection2)
                    
                    CollectionDetail(collection: collection4)
                    
                    Spacer()
                        .frame(height:60)
                    
                }
            
                }
                
                .navigationTitle("Collections")
                .navigationBarTitleDisplayMode(.inline)
                
            }
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(viewRouter: ViewRouter())
            .preferredColorScheme(.dark)
            
    }
}
