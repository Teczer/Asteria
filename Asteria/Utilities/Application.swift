//
//  Application.swift
//  Asteria
//
//  Created by Apprenant 67 on 30/06/2022.
//

import SwiftUI

final class ApplicationUtility {
    
    static var rootViewController: UIViewController {
        
        guard let screen =  UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .init()
        }
        
        guard let root = screen.windows.first?.rootViewController else {
            return .init()
        }
        
        return root 
    }
}
