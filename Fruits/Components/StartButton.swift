//
//  StartButton.swift
//  Fruits
//
//  Created by Ali on 20/08/2022.
//

import SwiftUI

struct StartButton: View {
    
    //MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    
    var buttonGradianColors:[Color]
    @State private var isPressed:Bool = false
    @State private var isAnimating:Bool = false
    
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            withAnimation(.linear(duration: 1)){
                isPressed.toggle()
                isOnboarding = false
            }
         
                      
        }) {
            HStack(spacing:8){
                Text("Start")
                
                Image(systemName: isPressed ? "arrow.down.circle" : "arrow.right.circle")
                    .imageScale(.large)
            }

            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            
            .background(
                
                ZStack {
                    
                    Capsule()
                        .fill(.ultraThinMaterial)
                        .opacity(0.15)
                        .shadow(color: .white.opacity(0.5), radius: 15, x: 0, y: 15)
                    
                    Capsule()
                        .strokeBorder(LinearGradient(colors: buttonGradianColors, startPoint: .top, endPoint: .bottom) , lineWidth: 1.25)
                        
                }
                    
                    
            )
            
           
        }
        .opacity(isAnimating ? 1 : 0)
        .animation(.linear(duration: 1), value: isAnimating)
        .accentColor(.white)
        
        .onAppear {
            isAnimating = true
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //MARK: - FUNCTIONS
}






































//MARK: - PREVIEW
struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(buttonGradianColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")] )
            .previewDevice("iPhone 12")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
