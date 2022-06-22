//
//  QuizzEndingView.swift
//  Asteria
//
//  Created by apprenant70 on 22/06/2022.
//

import SwiftUI

struct QuizzEndingView: View {
    var body: some View {
        ZStack {
            Color("OxfordBlue")
                .ignoresSafeArea()
            VStack {
                ScoreBar()
                    .padding()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Bien joué")
                        Text("Tu remportes une carte")
                    }
                    Spacer()
                    Text("4")
                    Text("sur \(questionNoTotal)")
                }
                .padding(.horizontal)
            }
        }
    }
}

struct QuizzEndingView_Previews: PreviewProvider {
    static var previews: some View {
        QuizzEndingView()
    }
}
