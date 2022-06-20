//
//  TutoView.swift
//  Asteria
//
//  Created by apprenant70 on 20/06/2022.
//

import SwiftUI
import Foundation   // needed for markdown formatting in text

struct TutoView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                Color("OxfordBlue").opacity(0.3)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Rectangle()
                            .fill(
                                LinearGradient(gradient: Gradient(stops: [
                                    Gradient.Stop(color: Color("OxfordBlue").opacity(0), location: 0),
                                    Gradient.Stop(color: Color("OxfordBlue"), location: 0.22),
                                ]), startPoint: .top, endPoint: .bottom)
                            )
                        .ignoresSafeArea()
                        .frame(height:300)
                }
                ScrollView(.horizontal) {
                    HStack(spacing:0) {
                        ForEach(0..<3) { index in
                            VStack {
                                ZStack {
                                    VStack {
                                        Spacer()
                                    }
                                    VStack {
                                        Image("tutoscreen\(index)")
                                            .resizable()
                                            .scaledToFit()
                                        .ignoresSafeArea()
                                        Spacer()
                                        Text("Test")
                                    }
                                }

                                }
                                .frame(width:geometry.size.width)
                        }
                    }
                }
            }
            
        }
    }
}

struct TutoView_Previews: PreviewProvider {
    static var previews: some View {
        TutoView()
            .preferredColorScheme(.dark)
    }
}
