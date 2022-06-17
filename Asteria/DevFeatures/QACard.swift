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
            
            QACardContent()
                .frame(width:300, height:600)
        }
    }
}


struct QACardContent: View {
    var body: some View {
        VStack(alignment:.center) {
            Spacer()
                .frame(height:15)
            Text("QUESTION")
                .font(.custom("Montserrat", size: 15))
                .fontWeight(.light)
                .tracking(5)
                .frame(height:30)
            Rectangle()
                .fill(.black)
                .frame(height:200)
            Text("La Lune est un satellite de la planète...")
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .frame(width:270, height:150)
            ZStack {
                Rectangle()
                    .fill(.red)
                    .frame(height:150)
                Text("Ici je mettrai les boutons dès qu'ils seront disponibles")
            }
            Spacer()
        }
    }
}


struct QACard_Previews: PreviewProvider {
    static var previews: some View {
        QACard()
            .preferredColorScheme(.dark)
    }
}
