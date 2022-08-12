//
//  HPData.swift
//  homehome
//
//  Created by Evangeline Jing on 8/9/22.
//

import SwiftUI

struct HPData: Identifiable{
    let id = UUID()
    let imageName: String
    let title: String
}

struct HDList{
    
    static let HD = [
    HPData(imageName: "leaf",
           title: "Last 14 Days"),
    HPData(imageName: "leaf.fill",
           title: "Last 30 Days"),
    HPData(imageName: "leaf.circle",
           title: "Last 2 Months"),
    HPData(imageName: "leaf.circle.fill",
           title: "Last 3 Months"),
    HPData(imageName: "leaf.arrow.triangle.circlepath",
           title: "Last 6 Months"),
    HPData(imageName: "globe.americas",
           title: "Last 12 Months"),
    
    ]
}
