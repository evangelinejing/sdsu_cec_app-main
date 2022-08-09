//
//  ObjectDemo.swift
//  FirebaseConnection
//
//  Created by Lars Fischer on 7/21/22.
//

import Foundation
class ObjectDemo: Decodable{
    var soc:String = ""
    var cell1:String = ""
    var cell2:String = ""
    var mode:String = ""
}

extension Encodable{
    var toDictionary: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else{
            return nil
        }
        
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
    }
}
