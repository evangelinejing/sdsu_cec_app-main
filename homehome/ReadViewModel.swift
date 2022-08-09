//
//  ReadViewModel.swift
//  FirebaseConnection
//
//  Created by Lars Fischer on 7/21/22.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

class ReadViewModel: ObservableObject{
    
    var ref = Database.database().reference()
    @Published
    var value: String? = nil
    
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
}

 
