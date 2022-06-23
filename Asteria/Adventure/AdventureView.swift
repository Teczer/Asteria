//
//  AllLevelView.swift
//  Asteria
//
//  Created by apprenant50 on 23/06/2022.
//

import SwiftUI

struct AdventureView: View {
    var id = UUID()
    var body: some View {
        ScrollView{
            ScrollViewReader{ proxy in
                VStack(alignment: .leading, spacing:0){
                    level4View()
                    level3View()
                    level2View()
                    level1View().id(id)
                }.onAppear{
                    proxy.scrollTo(id)
                }
            }
        }
    }
}

struct AdventureView_Previews: PreviewProvider {
    static var previews: some View {
        AdventureView()
    }
}
