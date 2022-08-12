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
                HPBack().ignoresSafeArea()

            
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
                
            }.navigationBarHidden(true)
                    .navigationTitle("Data History")
                    
                    
                
        
            }
            
        }
        
    }
    
}

struct HPListView_Previews: PreviewProvider {
    static var previews: some View {
        HPListView()
    }
}
