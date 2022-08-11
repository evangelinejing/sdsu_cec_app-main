//
//  HPDetail.swift
//  homehome
//
//  Created by Evangeline Jing on 8/9/22.
//

import SwiftUI

struct HPDetail: View {
    var data: HPData
    
    var body: some View {
        ZStack{
            Image("back").resizable().ignoresSafeArea()
            Circle()
                .scale(1.4)
                    .foregroundColor(.black.opacity(0.5)).offset(y: -500).ignoresSafeArea()
            Circle()
                .scale(1.65)
                    .foregroundColor(.black.opacity(0.09)).offset(y: -500).ignoresSafeArea()
            Circle()
                .scale(1.6)
                    .foregroundColor(.black.opacity(0.09)).offset(y: +150).ignoresSafeArea()
            Circle()
                .scale(1.4)
                    .foregroundColor(.black.opacity(0.3)).offset(y: +200).ignoresSafeArea()
            Text("Data History").font(.title).accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).offset(y:-380)

        HStack{
            Text(data.title).font(.title).foregroundColor(Color(.black)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/)
            Image(systemName: data.imageName)
                .font(.title).foregroundColor(Color(.black)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/)
        }
    }
    }
}

struct HPDetail_Previews: PreviewProvider {
    static var previews: some View {
        HPDetail(data:HDList.HD.first!)
    }
}
