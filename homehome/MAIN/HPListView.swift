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

            
            List(datas, id: \.id){ data in
                NavigationLink(destination: HPDetail(data:data),label:{
                    HStack{
                        Text(data.title).font(.title).foregroundColor(Color(.black).opacity(0.7)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/)
                        Image(systemName: data.imageName)
                            .font(.title).foregroundColor(Color(.black).opacity(0.7)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/).padding(.vertical)
                    }.frame(width: 300.0, height: 80.0).background(
                        RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                })
                .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing], 1.0/*@END_MENU_TOKEN@*/)
                
            }.navigationBarHidden(true).navigationBarTitle("Data Histroy")
                   
                    
                
        
            }
            
        }
        
    }
    
}

struct HPListView_Previews: PreviewProvider {
    static var previews: some View {
        HPListView()
    }
}
