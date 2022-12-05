//
//  ObjectDemo.swift
//  FirebaseConnection
//
//  Created by Lars Fischer on 10/23/22.
//

import Foundation
class TodayData: Decodable{
    var H00s1:Double = 0
    var H00s2:Double = 0
    var H00s3:Double = 0
    
    var H01s1:Double = 0
    var H01s2:Double = 0
    var H01s3:Double = 0
    
    var H02s1:Double = 0
    var H02s2:Double = 0
    var H02s3:Double = 0
    
    var H03s1:Double = 0
    var H03s2:Double = 0
    var H03s3:Double = 0

    var H04s1:Double = 0
    var H04s2:Double = 0
    var H04s3:Double = 0

    var H05s1:Double = 0
    var H05s2:Double = 0
    var H05s3:Double = 0

    var H06s1:Double = 0
    var H06s2:Double = 0
    var H06s3:Double = 0

    var H07s1:Double = 0
    var H07s2:Double = 0
    var H07s3:Double = 0

    var H08s1:Double = 0
    var H08s2:Double = 0
    var H08s3:Double = 0

    var H09s1:Double = 0
    var H09s2:Double = 0
    var H09s3:Double = 0

    var H10s1:Double = 0
    var H10s2:Double = 0
    var H10s3:Double = 0    
}

extension Encodable{
    var toDictionary1: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else{
            return nil
        }
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
    }
}
