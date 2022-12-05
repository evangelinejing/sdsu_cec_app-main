//
//  PackViewLars.swift
//  homehome
//
//  Created by Lars Fischer on 9/12/22.
//

import SwiftUI

struct PackViewLars: View {
    @StateObject var viewModel = ReadViewModel()
    @State private var timerString = "Tab for live data"
    @State var isTimerRunning = false
    @State private var timeRemaining = 500
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Spacer()
            if viewModel.object != nil{
                VStack{
                    Text(timerString)
                        .font(.title)
                               .fontWeight(.bold)
                               .foregroundColor(self.isTimerRunning ? .green : .white)
                               .frame(width:300, height: 50)
                               .background(self.isTimerRunning ? .white.opacity(0.8) : .black.opacity(0.5))
                               .cornerRadius(10)
                               .onTapGesture {
                                   isTimerRunning.toggle()
                                   viewModel.ref.child("uploadLiveData").setValue(isTimerRunning)
                               }
                               .onReceive(timer) { _ in
                                   if self.isTimerRunning {
                                       timerString = String(timeRemaining)
                                       timeRemaining -= 1
                                       timerString = "Live for: " + timerString + "s"
                                   }
                                   if !isTimerRunning {
                                       timerString = "Tab for live data"
                                       timeRemaining = 500
                                   }
                                   if timeRemaining <= 1{
                                       isTimerRunning.toggle()
                                       viewModel.ref.child("uploadLiveData").setValue(isTimerRunning)
                                   }
                               }
                               .onTapGesture {
                                   isTimerRunning.toggle()
                                   viewModel.ref.child("uploadLiveData").setValue(isTimerRunning)
                               }
                    HStack{
                        VStack() {
                            Group{
                                Text(" ")
                                    .font(.system(size: 30, weight: .bold, design: .default))
                                Text("Voltage")
                                Text("soc")
                                Text("Current")
                                Text("Power")
                                Text("Min. Vol")
                                Text("Max. Vol")
                                Text("kwH")
                            }
                            Group{
                                Text("Min Temp")
                                Text("Max Temp")
                                Text("Error")
                                Text("Step")
                                Text("dT")
                                Text("dV")
                            }
                        }.padding()
                            .background(.black.opacity(0.9))
                            .foregroundColor(.white)
                            .cornerRadius(10)

                        
                        ScrollView(.horizontal) {
                            HStack{
                                
                                VStack (spacing:0){
                                    Group{
                                        Text("Pack 1")
                                            .font(.system(size: 30, weight: .bold, design: .default))
                                        Text("\(viewModel.object!.P00_vol, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_soc, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_curr, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_pow, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_v_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_v_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_kwh, specifier: "%.2f")")
                                    }
                                    Group{
                                        Text("\(viewModel.object!.P00_T_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_T_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_Err, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_step, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_dT, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P00_dv, specifier: "%.2f")")
                                    }
                                }.padding()
                                VStack {
                                    Group{
                                        Text("Pack 2")
                                            .font(.system(size: 30, weight: .bold, design: .default))
                                        Text("\(viewModel.object!.P01_vol, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_soc, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_curr, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_pow, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_v_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_v_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_kwh, specifier: "%.2f")")
                                    }
                                    Group{
                                        Text("\(viewModel.object!.P01_T_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_T_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_Err, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_step, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_dT, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P01_dv, specifier: "%.2f")")
                                    }
                                }.padding()
                                VStack {
                                    Group{
                                        Text("Pack 3")
                                            .font(.system(size: 30, weight: .bold, design: .default))
                                        Text("\(viewModel.object!.P02_vol, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_soc, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_curr, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_pow, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_v_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_v_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_kwh, specifier: "%.2f")")
                                    }
                                    Group{
                                        Text("\(viewModel.object!.P02_T_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_T_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_Err, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_step, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_dT, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P02_dv, specifier: "%.2f")")
                                    }
                                }.padding()
                                VStack {
                                    Group{
                                        Text("Pack 4")
                                            .font(.system(size: 30, weight: .bold, design: .default))
                                        Text("\(viewModel.object!.P03_vol, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_soc, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_curr, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_pow, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_v_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_v_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_kwh, specifier: "%.2f")")
                                    }
                                    Group{
                                        Text("\(viewModel.object!.P03_T_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_T_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_Err, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_step, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_dT, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P03_dv, specifier: "%.2f")")
                                    }
                                }.padding()
                                VStack {
                                    Group{
                                        Text("Pack 5")
                                            .font(.system(size: 30, weight: .bold, design: .default))
                                        Text("\(viewModel.object!.P04_vol, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_soc, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_curr, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_pow, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_v_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_v_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_kwh, specifier: "%.2f")")
                                    }
                                    Group{
                                        Text("\(viewModel.object!.P04_T_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_T_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_Err, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_step, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_dT, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P04_dv, specifier: "%.2f")")
                                    }
                                }.padding()
                                VStack {
                                    Group{
                                        Text("Pack 6")
                                            .font(.system(size: 30, weight: .bold, design: .default))
                                        Text("\(viewModel.object!.P05_vol, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_soc, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_curr, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_pow, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_v_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_v_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_kwh, specifier: "%.2f")")
                                    }
                                    Group{
                                        Text("\(viewModel.object!.P05_T_min, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_T_max, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_Err, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_step, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_dT, specifier: "%.2f")")
                                        Text("\(viewModel.object!.P05_dv, specifier: "%.2f")")
                                    }
                                }.padding()
                            }
                            
                        }
                    }
                    .background(Color.white.opacity(0.7))
                    .font(.system(size: 25, weight: .semibold, design: .default))
                    .cornerRadius(10)
                    
                }
               
                
            }else{
                VStack{
                    Text("Server connection failed")
                        .padding()
                        .font(.system(size: 20, weight: .bold))
                        .onAppear(){
                            self.viewModel.readLiveData()
                        }
                    Button{
                        viewModel.readLiveData()
                    } label: {
                        Text("Try again")
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.9, saturation: 0.078, brightness: 0.959))
                            .frame(width:300, height: 50)
                            .background(.black.opacity(0.5))
                            .cornerRadius(10)
                    }
                }
                
            }
            Spacer()
        }
    }
}


struct PackViewLars_Previews: PreviewProvider{
    static var previews: some View{
        PackViewLars()
        
    }
    
}


