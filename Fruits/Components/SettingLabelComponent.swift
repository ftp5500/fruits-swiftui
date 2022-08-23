//
//  SettingLabelComponent.swift
//  Fruits
//
//  Created by Ali on 22/08/2022.
//

import SwiftUI

struct SettingLabelComponent: View {
    //MARK: - PROPERTIES
    var labelText:String
    var labelImage:String
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }//: HStack
    }
}
//MARK: - PREVIEW
struct SettingLabelComponent_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelComponent(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
