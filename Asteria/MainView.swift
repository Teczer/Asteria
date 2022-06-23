//
//  ContentView.swift
//  Asteria
//
//  Created by Theia Team on 17/06/2022.
//

import SwiftUI

struct MainView: View {
    @Binding var login: String
    @State private var onBoardDone = false
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        GeometryReader { geometry in
            Color("OxfordBlue")
            VStack {
                switch viewRouter.currentPage {
                case .collection:
                    SingleCardView(cardFront: cardFront1, cardBack: cardBack1, miniCard: false)
                case .aventure:
                    LoginView(username: $login)
                case .profil:
                    MehdiWIP()
                }
                HStack {
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .collection, width: geometry.size.width/3, height: geometry.size.height/28, systemIconName: viewRouter.currentPage == .collection ? "square.stack.fill" : "square.stack", tabName: "Collections")
                    ZStack {
                        VStack {
                            Circle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [Color("CarnationPink"), Color("CyberGrape")]), startPoint: .top, endPoint: .bottom)
                                )
                                .frame(width: geometry.size.width/3, height: geometry.size.width/5)
                                .shadow(radius: 4)
                                .overlay(
                                    Circle()
                                        .stroke(Color("OxfordBlue"), lineWidth: 7)
                                )
                                .overlay(
                                    Image(viewRouter.currentPage == .aventure ? "rocket.fill" : "rocket")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: geometry.size.width/7.5-10, height: geometry.size.width/7.5-10)
                                )
                            Text("Aventure")
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                    }
                    .onTapGesture {
                        viewRouter.currentPage = .aventure
                    }
                    .offset(y: -geometry.size.height/13/2)
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .profil, width:     geometry.size.width/3, height: geometry.size.height/28, systemIconName: viewRouter.currentPage == .profil ? "person.fill" : "person", tabName: "Profil")
                }
                .frame(width: geometry.size.width, height: geometry.size.height/12)
            }
            .edgesIgnoringSafeArea(.bottom)
            .zIndex(onBoardDone ? 10 : 0)
            if onBoardDone == false {
            TutoView(endOnBoarding: $onBoardDone).tag(0)
                            .zIndex(onBoardDone ? 0 : 10)
            } else {

            }
        }
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(login: .constant(""), viewRouter: ViewRouter())
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}

struct TabBarIcon: View {
    let viewRouter: ViewRouter
    let assignedPage: Page
    let width, height: CGFloat
    let systemIconName, tabName: String
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            Text(tabName)
                .font(.footnote)
                .fontWeight(.bold)
            Spacer()
        }
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
    }
}
