//
//  ScoreBar.swift
//  Asteria
//
//  Created by apprenant70 on 20/06/2022.
//

import SwiftUI

struct ScoreBar: View {
    
    @StateObject var quizzController : QuizzController
    
    var body: some View {
        ZStack {
            HStack (spacing:0) {
                Spacer()
                    .frame(width:16)
                Color("LavenderBlush").opacity(0.5)
                    .frame(height: 12)
                Spacer()
                    .frame(width:16)
            }
            HStack (spacing:0) {
                ForEach(0..<quizzController.questionNoTotal) { index in
                    if index > 0 {
                        Spacer()
                    }
                    ZStack {
                        if quizzController.goodAnswers[index] == true {
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(Color("OxfordBlue"), Color("CarnationPink"))
                                .frame(width: 36, height: 36)
                        } else {
                            Image(systemName: "xmark.circle.fill")
                                .resizable()
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(Color("OxfordBlue"), Color("LavenderBlush"))
                                .frame(width: 36, height: 36)
                        }
                        
                    }
                }
            }
        }
    }
}
//
//struct ScoreBar_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        ScoreBar(quizzController: QuizzController())
//            .preferredColorScheme(.dark)
//    }
//}
