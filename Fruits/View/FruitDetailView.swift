//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Ali on 21/08/2022.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: - PROPERTIES
    var fruit:Fruit

  
    //MARK: - FUNCTIONS
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //: HEADER
                    
                    FruitHeaderComponent(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //: TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                           
                        
                        //: HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        //: NUTRIENTS
                        FruitNutrientsComponent(fruit: fruit)
                        
                        //: SUBHEADLINE
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                            
                        
                        
                        //: DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //: LINK
                        SourceLIinkComponent()
                            .padding(.top , 10)
                            .padding(.bottom , 40)
                    

                    }//: End VStack
                    .padding(.horizontal , 20)
                    .frame(maxWidth:640, alignment: .center)
                    
                }//: End VStack
                .navigationBarTitle(fruit.title , displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: ScrollView
            .edgesIgnoringSafeArea(.top)
          
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
        
        
        
    }//: END BODY
}//: END FRUITDETAILVIEW


//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 12")
            .preferredColorScheme(.light)
            
    }
}
