//
//  HPListView.swift
//  homehome
//
//  Created by Evangeline Jing on 8/9/22.
//

import SwiftUI

struct HPListView: View {
    @State var buttonTitle = "Historical Data"
    init() {
        UITableView.appearance().backgroundColor = .clear
        }
    
    var datas: [HPData] = HDList.HD
   
    var body: some View {
       
            
        NavigationView{
            ZStack{
                Image("back").resizable().ignoresSafeArea()
               
                Circle()
                    .scale(1.4)
                        .foregroundColor(.black.opacity(0.5)).offset(y: -500)
                Circle()
                    .scale(1.65)
                        .foregroundColor(.black.opacity(0.09)).offset(y: -500)
                Circle()
                    .scale(1.6)
                        .foregroundColor(.black.opacity(0.09)).offset(y: +150)
                Circle()
                    .scale(1.4)
                        .foregroundColor(.black.opacity(0.3)).offset(y: +200)
            
            List(datas, id: \.id){ data in
                NavigationLink(destination: HPDetail(data:data),label:{
                    HStack{
                        Text(data.title).font(.title).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/)
                        Image(systemName: data.imageName)
                            .font(.title).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/).padding(.vertical)
                    }.background(
                        RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                })
                .toolbar{
                    ToolbarItem (placement: ToolbarItemPlacement .principal){
                        Menu ("\(buttonTitle)") {
                            
                        }
                        .font(.title).accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959))}}
                
            }
            }
            
        }
        
    }
    
}

struct HPListView_Previews: PreviewProvider {
    static var previews: some View {
        HPListView()
    }
}
