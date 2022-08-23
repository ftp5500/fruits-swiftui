//
//  SettingView.swift
//  Fruits
//
//  Created by Ali on 22/08/2022.
//

import SwiftUI




struct SettingView: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    
    @State private var applicationData:[String:String] = [
        "Develper":"Ali Aljabri",
        "Designer":"Ali Aljabri",
        "Compatibilty":"IOS 15",
        "Website":"SwiftUI Masterclass",
        "Twitter":"@aljabri55",
        "SwiftUI":"2.0",
        "Version":"1.1.0",
        
    ]
    
    
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingLabelComponent(labelText: "Fructus", labelImage: "info.circle")
                            .padding(.vertical , 10)
                            .overlay(
                                Divider()
                                ,alignment: .bottom
                            )
                    )
                    {
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essintial nutrients, inlcuding potassium, dietary fiber, vitamins, and much more.")
                                .multilineTextAlignment(.leading)
                                .font(.footnote)
                            
                            
                        }//: HStack
                        
                    }//: GroupBox
                    
                    .background(.ultraThinMaterial)
                    .cornerRadius(8)
                    
                    //MARK: - SECTION 2
                    
                    GroupBox(
                        label:
                            SettingLabelComponent(labelText: "application", labelImage: "apps.iphone")
                            .padding(.vertical , 10)
                        //                            .overlay(
                        //                                Divider()
                        //                                    .padding(.top , 20)
                        //                                ,alignment: .bottom
                        //                            )
                        
                    ){
                        VStack{
                            ForEach(applicationData.keys.sorted() , id: \.self){  key in
                                
                            }
                        }//: VStack
                        
                        
                    }//: GROUPBOX
                    .background(.ultraThinMaterial)
                    .cornerRadius(8)
                    
                    
                    //MARK: - SECTION 3
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(
                            action: {
                                dismiss()
                            },
                            label: {
                                Image(systemName: "xmark")
                            })
                )
                .padding()
                
            }//: SCROLL
        }//: NAVIGATION
    }
}
//MARK: - PREVIEW
struct SettingView_Previews: PreviewProvider {
    
    static var previews: some View {
        SettingView()
            .previewDevice("iPhone 12")
            .preferredColorScheme(.dark)
    }
}
