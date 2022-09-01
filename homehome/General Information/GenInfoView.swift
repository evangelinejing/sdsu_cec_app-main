//
//  GenInfoView.swift
//  homehome
//
//  Created by Evangeline Jing on 8/29/22.
//

import SwiftUI

struct GenInfoView: View {
    var body: some View {
        ZStack{
            GenInfoBack()
            GenInfoData()
        }
    }
}

struct GenInfoView_Previews: PreviewProvider {
    static var previews: some View {
        GenInfoView()
    }
}
