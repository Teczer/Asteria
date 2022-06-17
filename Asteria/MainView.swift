//
//  ContentView.swift
//  Asteria
//
//  Created by Theia Team on 17/06/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}
