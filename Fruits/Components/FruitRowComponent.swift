//
//  FruitRowComponent.swift
//  Fruits
//
//  Created by Ali on 20/08/2022.
//

import SwiftUI

struct FruitRowComponent: View {
    
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .shadow(color: fruit.gradientColors[0].opacity(0.25), radius: 3, x: 2, y: 2)
                .cornerRadius(8)
            
            VStack(alignment:.leading, spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                 
                    
                    
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }//: VStack End
            
           
            
                
        }//: HStack End
        .shadow(color: fruit.gradientColors[0].opacity(0.25), radius: 10, x: 0, y: 10)

        
    }
}


        


    





    










//MARK: - PREVIEW
struct FruitRowComponent_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowComponent(fruit: fruitsData[0])
            .previewDevice("iPhone 12")
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
