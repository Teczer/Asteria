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
    
    var questionNoTotal : Int
    
    var body: some View {
        ZStack {
            HStack (spacing:0) {
                Spacer()
                    .frame(width:16)
                Color("LavenderBlush").opacity(0.8)
                    .frame(height: 12)
                Spacer()
                    .frame(width:16)
            }
            HStack (spacing:0) {
                ForEach(0..<questionNoTotal) { index in
                    if index > 0 {
                        Spacer()
                    }
                    ZStack {
                        if goodAnswers[index] == true {
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(Color("OxfordBlue"), Color("CarnationPink"))
                                .frame(width: 36, height: 36)
                        } else {
                            Image(systemName: "xmark.circle.fill")
                                .resizable()
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(Color("OxfordBlue"), Color("LavenderBlush"))
                                .frame(width: 36, height: 36)
                        }
                        
                    }
                }
            }
        }
    }
}

struct ScoreBar_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBar(questionNoTotal: 3)
            .preferredColorScheme(.dark)
    }
}
