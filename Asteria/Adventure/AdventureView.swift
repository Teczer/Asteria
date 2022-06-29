//
//  AllLevelView.swift
//  Asteria
//
//  Created by apprenant50 on 23/06/2022.
//

import SwiftUI

struct AdventureView: View {
    
    var id = UUID()
    @StateObject var viewRouter: ViewRouter
    @AppStorage("levelProgression") var levelProgression:Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollViewReader{ proxy in
                    VStack(alignment: .leading, spacing:0){
                        level4View(viewRouter: viewRouter)
                        level3View(viewRouter: viewRouter)
                        level2View(viewRouter: viewRouter)
                        level1View(viewRouter: viewRouter).id(id)
                        Text("[DEBUG]\rlevelProgression : \(levelProgression)")
                            .font(.caption2)
                            .padding(.horizontal)
                    }.onAppear{
                        proxy.scrollTo(id)
                        viewRouter.hideInAventure = false
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct AdventureView_Previews: PreviewProvider {
    static var previews: some View {
        AdventureView(viewRouter: ViewRouter())
    }
}
