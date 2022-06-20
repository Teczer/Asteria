//
//  ScoreBar.swift
//  Asteria
//
//  Created by apprenant70 on 20/06/2022.
//

import SwiftUI

//sample values
let goodAnswers : [Bool] = [true, true, false, true, true, true, false, true, true, true]

struct ScoreBar: View {
    var body: some View {
        GeometryReader { geometry in
            HStack (spacing:0) {
                ForEach(0..<questionNoTotal) { index in
                    if index > 0 {
                        Color("LavenderBlush").opacity(0.8)
                        .frame(height: 10)                        }
                    ZStack {
                        Image(systemName: goodAnswers[index] ? "checkmark.circle.fill" : "xmark.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundColor(goodAnswers[index] ? Color("CarnationPink") : Color ("LavenderBlush"))
                    }
                }
            }
        }
    }
}

struct ScoreBar_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBar()
            .preferredColorScheme(.dark)
    }
}
