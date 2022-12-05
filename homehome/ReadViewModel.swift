//
//  ReadViewModel.swift
//  FirebaseConnection
//
//  Created by Lars Fischer on 7/21/22.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift
import FirebaseAuth

class ReadViewModel: ObservableObject{
   
    @Published var ref = Database.database().reference()
    @Published var value: String? = nil
    @Published var todayData: TodayData? = nil
    @Published var adminTrue: Bool = false
    @Published var object: ObjectDemo? = nil
    @Published var s1array: [Series] = []
    @Published var s2array: [Series] = []
    struct Series: Identifiable{
        let time:Int
        let data:Double
        var id:Int {time}
    }
    
    func readValue(){
        ref.child("KeyA").observeSingleEvent(of: .value) { snapshot in
            self.value = snapshot.value as? String
        }
    
    }
    func observeDataChange(){
        ref.child("KeyA").observe(.value) { snapshot in
            self.value = snapshot.value as? String ?? "Load failed"
        }
    }
    
    func readLiveData(){
        ref.child("liveData")
            .observe(.value) { snapshot in
                do{
                    self.object = try snapshot.data(as: ObjectDemo.self)
                }catch{
                    print("Can not convert to ObjectDemo")
                }
            }
    }
    
    func readTodayData(){
        ref.child("Today")
            .observe(.value) { snapshot in
                do{
                    self.todayData = try snapshot.data(as: TodayData.self)
                    if self.todayData != nil {
                        self.s1array = [
                            Series(time: 00, data: self.todayData!.H00s1),
                            Series(time: 01, data: self.todayData!.H01s1),
                            Series(time: 02, data: self.todayData!.H02s1),
                            Series(time: 03, data: self.todayData!.H03s1),
                            Series(time: 04, data: self.todayData!.H04s1),
                            Series(time: 05, data: self.todayData!.H05s1),
                            Series(time: 06, data: self.todayData!.H06s1),
                            Series(time: 07, data: self.todayData!.H07s1),
                            Series(time: 08, data: self.todayData!.H08s1),
                            Series(time: 09, data: self.todayData!.H09s1),
                            Series(time: 10, data: self.todayData!.H10s1)
                        ]
                        self.s2array = [
                            Series(time: 00, data: self.todayData!.H00s2),
                            Series(time: 01, data: self.todayData!.H01s2),
                            Series(time: 02, data: self.todayData!.H02s2),
                            Series(time: 03, data: self.todayData!.H03s2),
                            Series(time: 04, data: self.todayData!.H04s2),
                            Series(time: 05, data: self.todayData!.H05s2),
                            Series(time: 06, data: self.todayData!.H06s2),
                            Series(time: 07, data: self.todayData!.H07s2),
                            Series(time: 08, data: self.todayData!.H08s2),
                            Series(time: 09, data: self.todayData!.H09s2),
                            Series(time: 10, data: self.todayData!.H10s2)
                        ]
                    }
                }catch{
                    print("Can not convert to TodayData")
                }
            }
        }
    
    
    
    /*func observeListObject(){
        ref.child("Today").observe(.value) { parentSnapshot in
            guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else{
                //in case it not
                return
            }
            self.listObject = children.compactMap({ snapshot in
                return try? snapshot.data(as: TodayData.self)
            })
        }
    }*/
                                              
    func emergencyStop(){
        self.ref.child("EmergencyStop").setValue(true)
    }
    
    func checkForAdmin() {
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
 
        }

        self.ref.child("admin").observe(.value){ (snapshot) in
            if snapshot.hasChild(uid){
                self.adminTrue = true
            }else{
                self.adminTrue = false
            }
        }
    }
}



 
