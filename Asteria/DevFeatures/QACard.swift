//
//  QACard.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct QACard: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("CyberGrape"), Color("SpaceCadet")]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width:300, height:600)
                .cornerRadius(24)
                .shadow(color: .white.opacity(0.8), radius: 32)
            
            VStack {
//                Text("Question")
            }
        }
    }
}

struct QACard_Previews: PreviewProvider {
    static var previews: some View {
        QACard()
            .preferredColorScheme(.dark)
    }
}
