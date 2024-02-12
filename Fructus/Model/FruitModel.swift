//
//  FruitModel.swift
//  Fructus
//
//  Created by 鈴木航太 on 2024/02/12.
//

import SwiftUI

// MARK: フルーツデータモデル
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
