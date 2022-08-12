//
//  ContentView.swift
//  TestTabBar
//
//  Created by Evangeline Jing on 7/20/22.
//

import SwiftUI


import SwiftUICharts

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
            
            
        }.ignoresSafeArea()
        .accentColor(Color.black)
        
    }}



struct test_tab_Previews: PreviewProvider {
    static var previews: some View {
        test_tab()
            .environmentObject(ReadViewModel())
            .environmentObject(AppViewModel())
    }
}

struct HomeView: View {

    //@EnvironmentObject var viewModel = AppViewModel()
    
    var body: some View{
        HPListView().ignoresSafeArea()
      
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
                                
                                Text(String(viewModel.object!.soc))
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
        
        @EnvironmentObject var appView: AppViewModel
        @EnvironmentObject var fbase: ReadViewModel
        
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
                        appView.signOut()
                    }, label:{
                        Text("Sign Out")
                            .foregroundColor(Color(hue: 0.9, saturation: 0.626, brightness: 0.918))
                            .frame(width:300, height: 50)
                            .background()
                        .cornerRadius(10)})
                  //  Text(String(fbase.checkForAdmin()))
                   
                    if fbase.adminTrue{
                        Button (action: {
                            fbase.emergencyStop()
                        }, label:{
                            Text("EmergencyStop")
                                .foregroundColor(.black)
                                .frame(width:300, height: 50)
                                .background(Color.red)
                            .cornerRadius(10)})
                        
                    }
                }
                .onAppear(perform: fbase.checkForAdmin)
            }
            
        }
        
    }
    
