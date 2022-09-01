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
                    .frame(width: 64.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/14.0)}}
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
            .previewInterfaceOrientation(.portrait)
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
        DataView().ignoresSafeArea()
    }
}

struct ProfileView: View {
    
    @EnvironmentObject var appView: AppViewModel
    @EnvironmentObject var fbase: ReadViewModel
    
    var body: some View{
        
        Profile().ignoresSafeArea()
        
    }
    
}

