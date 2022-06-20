//
//  MehdiWIP.swift
//  Asteria
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct MehdiWIP: View {
    @State var changeA: Bool = false
    @State var change: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
                Color("CarnationPink")
                    .ignoresSafeArea()
                VStack {
                    AnswerButton(textInButton: "ce n’est pas un satellite")
                        .padding(.bottom)
                    NavigationLink(isActive: $change, destination: {VeroWIP()}) {}
                    
                    Button {
                        self.changeA.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                            self.change.toggle()
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 128, height: 50)
                            .foregroundColor(changeA ? Color("CarnationPink") : Color("OxfordBlue"))
                            .overlay(
                                Text("ce n’est pas un satellite")
                                    .font(.system(size: 12))
                                    .frame(width: 73, height: 50)
                                    .foregroundColor(changeA ? Color("SpaceCadet") : Color.white )
                            )
                    }
                }
            }
        }
    }
}

struct MehdiWIP_Previews: PreviewProvider {
    static var previews: some View {
        MehdiWIP()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}

struct CustomButton: View {
    var colorOfButton : String
    var textInButton : String
    var body: some View {
        if colorOfButton == "pink" {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("CarnationPink"))
                .overlay(
                    Text(textInButton)
                        .fontWeight(.bold)
                        .foregroundColor(Color("SpaceCadet"))
                )
        } else if colorOfButton == "blue" {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(Color("SpaceCadet"))
                .overlay(
                    Text(textInButton)
                        .fontWeight(.bold)
                        .foregroundColor(Color("LavenderBlush"))
                )
        } else if colorOfButton == "white" {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270, height: 50)
                .foregroundColor(.white)
                .overlay(
                    Text(textInButton)
                        .fontWeight(.bold)
                        .foregroundColor(Color("OxfordBlue"))
                )
        }
    }
}

struct AnswerButton: View {
    @State var selectedButton : Bool = false
    var textInButton : String
    var body: some View {
        Button {
            self.selectedButton.toggle()
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 128, height: 50)
                .foregroundColor(selectedButton ? Color("CarnationPink") : Color("OxfordBlue"))
                .overlay(
                    Text(textInButton)
                        .font(.system(size: 12))
                        .frame(width: 73, height: 50)
                        .foregroundColor(selectedButton ? Color("SpaceCadet") : Color.white )
                )
        }
    }
}



