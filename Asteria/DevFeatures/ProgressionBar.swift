//
//  ProgressionBar.swift
//  Asteria
//
//  Created by apprenant70 on 20/06/2022.
//

import SwiftUI

struct ProgressionBar: View {
    
    @StateObject var quizzController : QuizzController
    
    // animation data
    @State var animBarOffset:Double = -150
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                HStack (spacing:0) {
                    ZStack {
                        Color("CarnationPink").opacity(0.8)
                        Rectangle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color("CarnationPink").opacity(0), Color("LavenderBlush").opacity(0.6)]), startPoint: .leading, endPoint: .trailing)
                            )
                            .frame(width:100)
                            .offset(x:animBarOffset)
                            .onChange(of: quizzController.questionNoCurrent) { _ in
                                let baseAnimation = Animation.easeOut(duration: 10)
                                let repeated = baseAnimation.repeatForever(autoreverses: false)

                                withAnimation(repeated) {
                                    animBarOffset = 150
                                }
                            }
                    }
                    .frame(width: geometry.size.width*CGFloat(Double(quizzController.questionNoCurrent-1)/(Double(quizzController.questionNoTotal)-1)), height: 5)
                    .clipped()
                    Color("LavenderBlush").opacity(0.7)
                        .frame(height: 5)
                }
                HStack (spacing:0) {
                    ForEach(0..<quizzController.questionNoTotal) { index in
                        if index > 0 {
                            Spacer()
                        }
                        if index == quizzController.questionNoCurrent-1 {
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color("CarnationPink"))
                        } else if index < quizzController.questionNoCurrent-1 {
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("OrchidCrayola"))
                        } else if index > quizzController.questionNoCurrent-1 {
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
        ProgressionBar(quizzController: QuizzController())
            .preferredColorScheme(.dark)
    }
}
