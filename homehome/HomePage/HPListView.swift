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
                            Text(data.title).font(.title).foregroundColor(Color(.black).opacity(0.7)).dynamicTypeSize(.xLarge).menuStyle(/*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle())
                            Image(systemName: data.imageName)
                                .font(.title).foregroundColor(Color(.black).opacity(0.7)).dynamicTypeSize(.xLarge).menuStyle(/*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()).padding(.vertical)
                        }.frame(width: 300.0, height: 80.0).background(
                            RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                    })
                    .padding([.top, .bottom, .trailing], 1.0)
                    
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
