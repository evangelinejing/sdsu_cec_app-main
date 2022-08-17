//
//  StopButton.swift
//  homehome
//
//  Created by Evangeline Jing on 8/16/22.
//

import SwiftUI

struct StopButton: View {
    
    @State private var ForSureStop = false
    
    var body: some View {
        Button (action: {
            
            ForSureStop = true
            
        }, label:{
            VStack{
                Image (systemName:"lock.circle").foregroundColor(.black).dynamicTypeSize(/*@START_MENU_TOKEN@*/.accessibility5/*@END_MENU_TOKEN@*/)
                
                Text("Emergency Stop").fontWeight(.heavy).foregroundColor(.black).font(.title).accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).dynamicTypeSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                
                
                
            } .padding(.vertical)
                .frame(width: 180, height: 180).background(
                    RoundedRectangle (cornerRadius:10, style:.continuous).fill (.linearGradient (colors:[.red.opacity(0.5)], startPoint: .top, endPoint: .bottomTrailing)))
                
        }).alert("Are you sure to perform Emergent STOP?", isPresented:$ForSureStop) {
            Button("STOP",role: .destructive) {print("System Stopped!")}
        
        }
    }
}

struct StopButton_Previews: PreviewProvider {
    static var previews: some View {
        StopButton()
    }
}
