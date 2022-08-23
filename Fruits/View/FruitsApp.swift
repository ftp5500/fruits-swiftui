//
//  FruitsApp.swift
//  Fruits
//
//  Created by Ali on 18/08/2022.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
  
    var body: some Scene {
        
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            }else{
                ContentView()
                    
            }
           
        }
        
    }
}
