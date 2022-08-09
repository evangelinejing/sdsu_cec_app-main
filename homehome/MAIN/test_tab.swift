//
//  ContentView.swift
//  TestTabBar
//
//  Created by Evangeline Jing on 7/20/22.
//

import SwiftUI


import SwiftUICharts

// test github again ughhh 
// test Lars


struct test_tab: View {
    
    var body: some View {
        TabView{
            HomeView().tabItem({VStack{Image (systemName:"homekit").aspectRatio(contentMode: .fit).foregroundColor(Color.black).ignoresSafeArea()
                Text("Home")
                .foregroundColor(Color.black)}
            }
            )
            
            AnalysisView().tabItem(
                {VStack{
                    Image(systemName:"chart.xyaxis.line").resizable().aspectRatio(contentMode: .fit).foregroundColor(Color.black).ignoresSafeArea()
                    
                    Text("Analysis")
                        .foregroundColor(Color.black)
                        .lineLimit(nil)
                    .frame(width: /*@START_MENU_TOKEN@*/64.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/14.0/*@END_MENU_TOKEN@*/)}}
            )
            
            ProfileView().tabItem({VStack{Image(systemName:"person.crop.circle").resizable().aspectRatio(contentMode: .fit).foregroundColor(Color.black).ignoresSafeArea()
                Text("Profile")
                .foregroundColor(Color.black)}})
            
            
        }
        .accentColor(Color.black)
        
    }}



struct test_tab_Previews: PreviewProvider {
    static var previews: some View {
        test_tab()
    }
}

struct HomeView: View {
    @State var buttonTitle = "Historical Data"
    //@EnvironmentObject var viewModel = AppViewModel()
    
    var body: some View{
        
        NavigationView {
            
            ZStack{
                Image("back").resizable().ignoresSafeArea()
               
                        
                        

                ScrollView{
                    ZStack{
                        Circle()
                                .scale(1)
                                .foregroundColor(.black.opacity(0.3))
                        Circle()
                            .scale(1.4)
                                .foregroundColor(.black.opacity(0.7)).offset(y: -700)
                        Circle()
                            .scale(1.1)
                                .foregroundColor(.black.opacity(0.05)).offset(y: -39)
                        Circle()
                            .scale(1.4)
                                .foregroundColor(.black.opacity(0.05)).offset(y: +700)
                        
                    
                    VStack(spacing:20){
                        // Button(action: viewModel.signOut(), label: Text("sign out"))
  
                  
                
                        Button(action:{
                            
                        }, label:{
                        title: do {
                            Text("Right Now")
                        }
                        icon: do { Image(systemName: "leaf")
                        }}).font(.title).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/).frame(width :2000, height :80).background(
                            RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                        
                        Button (action:{
                                
                            }, label: {
                            title: do {
                                Text("Last 2 weeks")
                            }
                            icon: do { Image(systemName: "leaf.fill")
                            }}).font(.title).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/).frame(width :2000, height :80).background(
                                RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                        
                        Button(action:{
                                
                            },label: {
                            title: do {
                                Text("Last 1 month")
                            }
                            icon: do { Image(systemName: "leaf.circle")
                            }
                                
                            }).font(.title).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/).frame(width :2000, height :80).background(
                                RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                          
                        Button (action:{
                                
                            },label: {
                            title: do {
                                Text("Last 3 months")
                            }
                            icon: do { Image(systemName: "leaf.circle.fill")
                            }}).font(.title).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/).frame(width :2000, height :80).background(
                                RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                           
                        
                        Button (action:{
                                
                            },label: {
                            title: do {
                                Text("Last 6 months")
                            }
                            icon: do { Image(systemName: "leaf.arrow.triangle.circlepath")
                            }}).font(.title).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/).frame(width :2000, height :80).background(
                                RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                          
                                
                                
                            
                        Button (action:{
                                
                            },label: {
                            title: do {
                                Text("Last year")
                            }
                            icon: do { Image(systemName: "globe.americas")
                            }}).font(.title).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959)).dynamicTypeSize(.xLarge).menuStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Menu Style@*/DefaultMenuStyle()/*@END_MENU_TOKEN@*/).frame(width :2000, height :80).background(
                                RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.black.opacity(0.15)], startPoint: .top, endPoint: .bottomTrailing)))
                            
                        
                        }
                        
                            .toolbar{
                                ToolbarItem (placement: ToolbarItemPlacement .principal){
                                    Menu ("\(buttonTitle)") {
                                        
                                    }
                                        .font(.title).accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/).foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959))
                                    
                                    
                                }
                            }
                        
                    }
                }
                
            }
            }.navigationBarTitleDisplayMode(.automatic)
        }
    }




struct AnalysisView: View {
    @StateObject
    var viewModel = ReadViewModel()
    
    var body: some View{
        NavigationView {
            
            
            ZStack{
                Image("back").resizable().ignoresSafeArea()
                ScrollView{
                    VStack{
                        
                        Text("Current State:")
                            .padding()
                            .font(.system(size: 40, weight: .bold))
                        
                        Spacer()
                        
                        if viewModel.object != nil{
                            VStack{
                                
                                
                                Text("SOC:")
                                
                                Text(viewModel.object!.soc)
                                    .padding()
                                    .font(.system(size: 25, weight: .bold))
                                
                                
                                Text("Cell1 Voltage:")
                                Text(viewModel.object!.cell1)
                                    .padding()
                                    .font(.system(size: 25, weight: .bold))
                                
                                
                                Text("Cell2 Voltage:")
                                Text(viewModel.object!.cell2)
                                    .padding()
                                    .font(.system(size: 25, weight: .bold))
                                
                                Text("mode:")
                                Text(viewModel.object!.mode)
                                    .padding()
                                    .font(.system(size: 25, weight: .bold))
                                    .frame(width:300, height: 50)
                                    .background()
                                    .cornerRadius(10)
                                
                            }
                        } else {
                            
                            Text("Server connection failed")
                                .padding()
                                .font(.system(size: 20, weight: .bold))
                                .onAppear(){
                                    self.viewModel.readObject()
                                }
                            Button{
                                viewModel.readObject()
                            } label: {
                                Text("Try again")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(
                                        Color.black
                                    )
                                
                            }
                            
                        }
                                    
                    }
                }.navigationBarTitleDisplayMode(.automatic)
                
            }
        }
    }
}
    
    struct ProfileView: View {
        
        @EnvironmentObject var viewModel: AppViewModel
        
        var body: some View{
            
            ZStack {
                Image("back").resizable().ignoresSafeArea()
                
                
                Circle()
                    .scale(1.7)
                    .foregroundColor(.black.opacity(0.15))
                Circle ()
                    .scale(1.3)
                    .foregroundColor(.black.opacity(0.8))
                
                VStack {
                    
                    
                    Button (action: {
                        viewModel.signOut()
                    }, label:{
                        Text("Sign Out")
                            .foregroundColor(Color(hue: 0.9, saturation: 0.626, brightness: 0.918))
                            .frame(width:300, height: 50)
                            .background()
                        .cornerRadius(10)})
                }
            }
            
        }
        
    }
    
