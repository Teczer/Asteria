//
//  AsteriaApp.swift
//  Asteria
//
//  Created by Theia Team on 17/06/2022.
//

import SwiftUI

//@main
//struct AsteriaApp: App {
//    @StateObject var viewRouter = ViewRouter()
//
//    var body: some Scene {
//        WindowGroup {
//            MainView(viewRouter: ViewRouter())
//        }
//    }
//}

@main
struct AsteriaApp: App {
    @StateObject var viewRouter = ViewRouter()

    var body: some Scene {
        WindowGroup {
            QuizzView()
        }
    }
}

