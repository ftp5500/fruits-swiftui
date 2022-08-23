//
//  FruitHeaderComponent.swift
//  Fruits
//
//  Created by Ali on 21/08/2022.
//

import SwiftUI

struct FruitHeaderComponent: View {
    //MARK: - PROPERTIES
    let fruit:Fruit
    
    @State private var isAnimating:Bool = false
    
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical , 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
                
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimating.toggle()
                    }
                }
               
                
        }//: End ZStack
        .frame(height:440)
        
       
    }//: END BODY
}//: END VIEW



//MARK: - PREVIEW
struct FruitHeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderComponent(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
            .background()
    }
}
