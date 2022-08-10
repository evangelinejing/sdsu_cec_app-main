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
    @Published
    var ref = Database.database().reference()
    @Published
    var value: String? = nil
    
    @Published var helpvar: Bool = false
    
    
    
    @Published
    var object: ObjectDemo? = nil
    
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
    
    func readObject(){
        ref.child("Object")
            .observe(.value) { snapshot in
                do{
                    self.object = try snapshot.data(as: ObjectDemo.self)
                }catch{
                    print("Can not convert to ObjectDemo")
                }
            }
    }
                                              
    func emergencyStop(){
        self.ref.child("EmergencyStop").setValue(true)
    }
    
    func checkForAdmin() {
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
 
        }

        self.ref.child("admin").observe(.value){ (snapshot) in
            if snapshot.hasChild(uid){
                self.helpvar = true
            }else{
                self.helpvar = false
            }
        }
    }
}



 
