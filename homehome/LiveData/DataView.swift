//
//  AnalysisView.swift
//  homehome
//
//  Created by Evangeline Jing on 8/24/22.
//

import SwiftUI

struct DataView: View {
    var body: some View {
        ZStack{
            
            LiveDataBack()
            PackView()
            
        }
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
