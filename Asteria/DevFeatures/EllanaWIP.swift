//
//  EllanaWIP.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

//sample values
let questionNoCurrent = 4
let questionNoTotal = 5

//unmutable values
let questionProgression:Double = Double(questionNoCurrent-1)/(Double(questionNoTotal)-1)

struct ProgressBar: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                HStack (spacing:0) {
                    Color("CarnationPink").opacity(0.8)
                        .frame(width: geometry.size.width*CGFloat(questionProgression), height: 5)
                    Color("LavenderBlush").opacity(0.8)
                        .frame(height: 5)
                }
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("LavenderBlush"))
                    Spacer()
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("LavenderBlush"))
                    Spacer()
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("LavenderBlush"))
                    Spacer()
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("LavenderBlush"))
                    Spacer()
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("LavenderBlush"))
                }
            }
        }
    }
}

struct EllaView: View {
    
    var body: some View {
        VStack {
            ProgressBar()
            
            Text("Progression \(questionProgression)")
                .foregroundColor(Color.red)
            
        }.padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EllaView()
            .preferredColorScheme(.dark)
    }
}
