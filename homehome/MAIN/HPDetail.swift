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
