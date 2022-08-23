//
//  OnboardingView.swift
//  Fruits
//
//  Created by Ali on 20/08/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var fruits:[Fruit] = fruitsData

    
    //MARK: - FUNCTIONS
    
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0..<fruits.count]){ item in
                FruitCardComponent(fruit: item)
            }
        
        }//: End TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
    }//: End body
}//: End Onboardingview


//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
