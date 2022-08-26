//
//  SettingView.swift
//  Fruits
//
//  Created by Ali on 22/08/2022.
//

import SwiftUI

import Collections


struct SettingView: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @State private var isStarted = true
    @AppStorage("isOnboarding") var isOnboarding:Bool = false


    
    @State private var applicationData:OrderedDictionary = [
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
                    
                    GroupBox(label: SettingLabelComponent(labelText: "customization", labelImage: "paintbrush")) {
                        Divider()
                        VStack{
                            Text("If you wish you can restart the application by toggle the swith in the box. That way it starts the onboarding  process and you will see the welcome scren again.")
                            
                            GroupBox(){
                                Toggle(isOn: $isOnboarding) {
                                    Text(isOnboarding
                                         ? "restarted".uppercased()
                                         :"Restart".uppercased()
                                    )
                                        
                                        .fontWeight(.bold)
                                        .foregroundColor(isOnboarding ? .green : .secondary)
                                        .animation(.spring(), value: isOnboarding)
                                   
                                   }
                            }
                            
                        }
                    }
                    
                    
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        label:
                            SettingLabelComponent(labelText: "application", labelImage: "apps.iphone")
                            .padding(.vertical , 10)
                    ){
                        VStack{
                            ForEach(applicationData.keys , id: \.self){  key in
                                Divider()
                                HStack{
                                    Text(key)
                                        .foregroundColor(.secondary)
                                        .fontWeight(.bold)
                                    
                                    Spacer()
                                    if key == "Twitter"{
                                        Link(destination: URL(string: "https://twitter.com/aljabri55")!) {
                                            HStack(spacing:8){
                                                Text(applicationData[key]!)
                                                    .fontWeight(.bold)
                                                Image(systemName: "arrow.up.right.square")
                                                    .font(.title3)
                                                    .foregroundColor(.red)
                                            }//: HStack
                                        }//: Link
                                    }else if key == "Website" {
                                        Link(destination: URL(string: "https://alialjabri.netlify.app/")!) {
                                            HStack(spacing:8){
                                                Text(applicationData[key]!)
                                                    .fontWeight(.bold)
                                                Image(systemName: "arrow.up.right.square")
                                                    .font(.title3)
                                                    .foregroundColor(.red)
                                            }//: HStack
                                        }//: Link
                                        
                                    }else{
                                        
                                        Text(applicationData[key]!)
                                            .fontWeight(.bold)
                                    }
                                }

                            }
                        }//: VStack
                        
                        
                    }//: GROUPBOX
                    .background(.ultraThinMaterial)
                    .cornerRadius(8)
                    
                    
                                    
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
