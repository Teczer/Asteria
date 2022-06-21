//
//  AnswerButton.swift
//  Asteria
//
//  Created by apprenant70 on 21/06/2022.
//

import SwiftUI

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

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(textInButton: "Test")
    }
}
