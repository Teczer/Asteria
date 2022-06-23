//
//  AllLevelView.swift
//  Asteria
//
//  Created by apprenant50 on 23/06/2022.
//

import SwiftUI

struct AllLevelView: View {
    var id = UUID()
    var body: some View {
        ScrollView{
            ScrollViewReader{ proxy in
                VStack{
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

struct AllLevelView_Previews: PreviewProvider {
    static var previews: some View {
        AllLevelView()
    }
}
