//
//  StopButton.swift
//  homehome
//
//  Created by Evangeline Jing on 8/11/22.
//

import SwiftUI

struct StopButton: View {
    
    @EnvironmentObject var appView: AppViewModel
    @EnvironmentObject var fbase: ReadViewModel
    
    var body: some View {
        Button (action: {
            
        }, label:{
            HStack{
            Image(systemName:"xmark.circle")
                Text("EmergencyStop")}
                .foregroundColor(.black)
                .frame(width:300, height: 50)
                .background(Color.red)
            .cornerRadius(10)})
    }
}

struct StopButton_Previews: PreviewProvider {
    static var previews: some View {
        StopButton()
            .environmentObject(ReadViewModel())
            .environmentObject(AppViewModel())
    }
}
