//
//  ContentView.swift
//  Fruits
//
//  Created by Ali on 18/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    var fruits:[Fruit] = fruitsData
    @State private var isShowingSettings:Bool = false
    
    //MARK: - FUNCTIONS
    
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowComponent(fruit: item)
                            .padding(.vertical , 4)
                            .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 10)
                    }
                    
                }
            }//: End List
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                        
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings ){
                        SettingView()
                    }
                          
            )
        }//: End NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }//: End body
}//: End View





//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( fruits: fruitsData)
            .previewDevice("iPhone 12")
            .preferredColorScheme(.light)
        
    }
}
