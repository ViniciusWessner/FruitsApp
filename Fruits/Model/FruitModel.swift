//
//  FruitModel.swift
//  Fruits
//
//  Created by Vinicius Wessner on 02/04/24.
//

import SwiftUI

// MARK:  Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
 
}
