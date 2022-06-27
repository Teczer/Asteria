//
//  ProgressionBar.swift
//  Asteria
//
//  Created by apprenant70 on 20/06/2022.
//

import SwiftUI

//sample values
let questionNoCurrent = 3
let questionNoTotal = 3

//unmutable values
let questionProgression:Double = Double(questionNoCurrent-1)/(Double(questionNoTotal)-1)

struct ProgressionBar: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                HStack (spacing:0) {
                    Spacer()
                        .frame(width:5)
                    Color("CarnationPink").opacity(0.8)
                        .frame(width: geometry.size.width*CGFloat(questionProgression), height: 5)
                    Color("LavenderBlush").opacity(0.8)
                        .frame(height: 5)
                    Spacer()
                        .frame(width:5)
                }
                HStack (spacing:0) {
                    ForEach(0..<questionNoTotal) { index in
                        if index > 0 {
                            Spacer()
                        }
                        if index == questionNoCurrent-1 {
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("CarnationPink"))
                        } else if index < questionNoCurrent-1 {
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("OrchidCrayola"))
                        } else if index > questionNoCurrent-1 {
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("LavenderBlush"))
                        }
                    }
                }
            }
        }
    }
}

struct ProgressionBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressionBar()
            .preferredColorScheme(.dark)
    }
}
