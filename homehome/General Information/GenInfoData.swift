//
//  GenInfoData.swift
//  homehome
//
//  Created by Evangeline Jing on 8/29/22.
//

import SwiftUI
import SwiftUICharts

struct GenInfoData: View {
    var body: some View {
        VStack{
            BarChartView(
                data: ChartData (values: [
                    ("PV", 12),
                    ("Load", 22),
                    ("Grid", 25),
                    ("BATT", 23),
                    
                ]),
                title: "Site Name: Eton Bio"
            )
            

            Text("DC Bus:")

            Text("Demand Power: 5.6kW (the last 15min)")
        }
    }
}

struct GenInfoData_Previews: PreviewProvider {
    static var previews: some View {
        GenInfoData()
    }
}
