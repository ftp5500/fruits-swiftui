//
//  Fruits.swift
//  Fruits
//
//  Created by Ali on 20/08/2022.
//

import SwiftUI

struct Fruit:Identifiable {
    var id = UUID()
    var image:String
    var title:String
    var headline:String
    var gradiantColors:[Color]
    var description:String
    var nutirtion:[String]
}
