//
//  FruitusApp.swift
//  Fruitus
//
//  Created by Mithu's Macbook on 5/3/2022.
//

import SwiftUI

@main
struct FruitusApp: App {
    
    @AppStorage("isOnboarding") var isOnboading:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboading {
                OnBoardingView()
            }else {
                ContentView()
            }
        }
    }
}
