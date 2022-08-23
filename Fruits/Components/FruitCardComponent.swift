//
//  FruitCardComponent.swift
//  Fruits
//
//  Created by Ali on 19/08/2022.
//

import SwiftUI

struct FruitCardComponent: View {
    //MARK: - PROPERTY
    
    @State private var isAnimating:Bool = false
    var fruit:Fruit
    //MARK: - FUNCTIONS
    
 
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            VStack(spacing:20){
                //: FRUIT IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0  , opacity: isAnimating ? 0.15 : 0), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.2)
                    .animation(.spring(), value: isAnimating)
                //: FRUIT TITLE
                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2 )
                
                //: FRUIT HEADLINE
                Text(fruit.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal , 16)
                    .frame(maxWidth:480)
                
                //: BUTTON: START
                
                StartButton(buttonGradianColors: fruit.gradientColors)
                  
            }//: VStack End
            
     
        }//: ZStack End
        .onAppear {withAnimation(.easeOut(duration: 1)){isAnimating = true}}
        .frame(minWidth:0 , maxWidth:.infinity,  minHeight: 0 , maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal , 20)
        

    }//: End Body
}//: End FruitCardComponent Struct



//MARK: - PREVIEW
struct FruitCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardComponent(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
            .preferredColorScheme(.light)
            .padding()
    }
}
