//
//  ContentView.swift
//  Asteria
//
//  Created by Theia Team on 17/06/2022.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        GeometryReader { geometry in
            Color("OxfordBlue")
            VStack {
                Spacer()
                switch viewRouter.currentPage {
                case .collection:
                    MehdiWIP()
                case .aventure:
                    MehdiWIP()
                case .profil:
                    MehdiWIP()
                }
                Spacer()
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
                    .offset(y: -geometry.size.height/8/2)
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .profil, width:     geometry.size.width/3, height: geometry.size.height/28, systemIconName: viewRouter.currentPage == .profil ? "person.fill" : "person", tabName: "Profil")
                }
                .frame(width: geometry.size.width, height: geometry.size.height/8)
            }
            
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewRouter: ViewRouter())
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
