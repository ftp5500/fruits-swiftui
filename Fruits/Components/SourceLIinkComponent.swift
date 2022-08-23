//
//  SourceLIinkComponent.swift
//  Fruits
//
//  Created by Ali on 21/08/2022.
//

import SwiftUI

struct SourceLIinkComponent: View {
    //MARK: - PROPERTIES
    
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
                HStack{
                    Text("Content Source")
                    Spacer()
                    Link("Wikipedia" , destination: URL(string: "https://wikipedia.com")!)
                    Image(systemName: "arrow.up.right.square")
                    
                }
                .font(.footnote)
              

            }
        
        .background(.ultraThinMaterial)
        
      
    }
}

//MARK: - PREVIEW
struct SourceLIinkComponent_Previews: PreviewProvider {
    static var previews: some View {
        SourceLIinkComponent()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}





