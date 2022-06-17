//
//  EllanaWIP.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Color("LavenderBlush")
                    .frame(width: geometry.size.width, height: 5)
                    .opacity(0.5)
                    .frame(width: geometry.size.width*1)
                
                Color("CarnationPink")
                    .frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: 5)
                    .animation(.linear)
                HStack{
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("LavenderBlush"))
                    Spacer()
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("LavenderBlush"))
                    Spacer()
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("LavenderBlush"))
                    Spacer()
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("LavenderBlush"))
                    Spacer()
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("LavenderBlush"))
                }
            }
        }
    }
}
struct EllaView: View {
    @State var progressValue: Float = 0.0
    
    var body: some View {
        VStack {
            ProgressBar(value: $progressValue).frame(height: 20)
            
            Button(action: {
                self.startProgressBar()
            }) {
                Text("Start Progress")
            }.padding()
            
            Button(action: {
                self.resetProgressBar()
            }) {
                Text("Reset")
            }
            
            Spacer()
        }.padding()
    }
    
    func startProgressBar() {
        for _ in 0...100 {
            self.progressValue += 0.25
        }
    }
    
    func resetProgressBar() {
        self.progressValue = 0.0
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EllaView()
            .preferredColorScheme(.dark)
    }
}
