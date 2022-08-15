//
//  StopButton.swift
//  homehome
//
//  Created by Evangeline Jing on 8/11/22.
//w


import SwiftUI

struct Profile: View {
    
    @EnvironmentObject var appView: AppViewModel
    @EnvironmentObject var fbase: ReadViewModel
    
    var body: some View {
        ZStack{
            UserBack()
            VStack{
                HStack(alignment: .center, spacing: 10){
                    Button (action: {
                        
                    }, label:{
                        VStack{
                            Image (systemName:"lock.circle").foregroundColor(.black).dynamicTypeSize(/*@START_MENU_TOKEN@*/.accessibility5/*@END_MENU_TOKEN@*/)
                            
                            Text("Emergency Stop").fontWeight(.heavy).foregroundColor(.black).font(.title).accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).dynamicTypeSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                            
                            
                            
                        } .padding(.vertical)
                            .frame(width: 180, height: 180).background(
                                RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.red.opacity(0.5)], startPoint: .top, endPoint: .bottomTrailing)))
                        
                    })
                    
                    Button (action: {
                        
                    }, label:{
                        VStack{
                            Image (systemName:"repeat.circle").foregroundColor(.black).dynamicTypeSize(/*@START_MENU_TOKEN@*/.accessibility5/*@END_MENU_TOKEN@*/)
                            Text("Emergency Start").fontWeight(.heavy).foregroundColor(.black).font(.title).accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).dynamicTypeSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                        }.padding(.vertical)
                            .frame(width: 180, height: 180).background(
                                RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.blue.opacity(0.5)], startPoint: .top, endPoint: .bottomTrailing)))
                        
                    })
                }.offset(y:+30)
                
                Button (action: {
                    appView.signOut()
                }, label:{
                    Text("Sign Out")
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959))
                        .frame(width:300, height: 50)
                        .background(.black.opacity(0.5))
                    .cornerRadius(10)}).offset(y:+100)
            }
            

        }
    }
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
            .environmentObject(ReadViewModel())
            .environmentObject(AppViewModel())
    }
}
