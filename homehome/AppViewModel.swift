//
//  DataManager.swift
//  homehome
//
//  Created by Lars.
//

import SwiftUI
import Firebase
import FirebaseAuth

class AppViewModel: ObservableObject{
    var falseLogin:Bool = false
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn : Bool{
        return auth.currentUser != nil
    }

    
    func signIn(email: String, password: String){
        auth.signIn(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else{
                self.falseLogin = true
                return
            }
            //DispatchQueue.main.async {
                self.signedIn = true
                self.falseLogin = false

           // }
            
        }
    }
    
    func signOut(){
        
        try? auth.signOut()
        self.signedIn = false
        self.falseLogin = false
    }
    

}

