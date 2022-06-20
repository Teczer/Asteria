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
                    ZStack {
                        Rectangle()
                            .fill(
                                LinearGradient(gradient: Gradient(stops: [
                                    Gradient.Stop(color: Color("OxfordBlue").opacity(0), location: 0),
                                    Gradient.Stop(color: Color("OxfordBlue"), location: 0.25),
                                ]), startPoint: .top, endPoint: .bottom)
                            )
                            .ignoresSafeArea()
                        VStack {
                            Spacer()
                                .frame(height:40)
                            HStack {
                                Image(systemName: "chevron.compact.left")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color("LavenderBlush").opacity(0.5))
                                    .frame(width:10)
                                    .padding()
                                Spacer()
                                Image(systemName: "chevron.compact.right")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color("LavenderBlush").opacity(0.5))
                                    .frame(width:10)
                                    .padding()
                            }
                        }
                    }
                    .frame(height:330)
                }
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<3) { index in
                            VStack {
                                Image("tutoscreen0")
                                Spacer()
                                HStack {
                                    Text("Test")
                                }
                                .frame(height:330)
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
