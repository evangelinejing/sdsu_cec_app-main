//
//  ObjectDemo.swift
//  FirebaseConnection
//
//  Created by Lars Fischer on 7/21/22.
//

import Foundation
class ObjectDemo: Decodable{
    var P00_T_max:Double = 0
    var P00_T_min:Double = 0
    var P00_curr:Double = 0
    var P00_dT:Double = 0
    var P00_dv:Double = 0
    var P00_kwh:Double = 0
    var P00_pow:Double = 0
    var P00_soc:Double = 0
    var P00_Errstate:Double = 0
    var P00_step:Double = 0
    var P00_v_max:Double = 0
    var P00_v_min:Double = 0
    var P00_vol:Double = 0
    
    var P01_T_max:Double = 0
    var P01_T_min:Double = 0
    var P01_curr:Double = 0
    var P01_dT:Double = 0
    var P01_dv:Double = 0
    var P01_kwh:Double = 0
    var P01_pow:Double = 0
    var P01_soc:Double = 0
    var P01_Errstate:Double = 0
    var P01_step:Double = 0
    var P01_v_max:Double = 0
    var P01_v_min:Double = 0
    var P01_vol:Double = 0
    
    var P02_T_max:Double = 0
    var P02_T_min:Double = 0
    var P02_curr:Double = 0
    var P02_dT:Double = 0
    var P02_dv:Double = 0
    var P02_kwh:Double = 0
    var P02_pow:Double = 0
    var P02_soc:Double = 0
    var P02_Errstate:Double = 0
    var P02_step:Double = 0
    var P02_v_max:Double = 0
    var P02_v_min:Double = 0
    var P02_vol:Double = 0
    
    var P03_T_max:Double = 0
    var P03_T_min:Double = 0
    var P03_curr:Double = 0
    var P03_dT:Double = 0
    var P03_dv:Double = 0
    var P03_kwh:Double = 0
    var P03_pow:Double = 0
    var P03_soc:Double = 0
    var P03_Errstate:Double = 0
    var P03_step:Double = 0
    var P03_v_max:Double = 0
    var P03_v_min:Double = 0
    var P03_vol:Double = 0
    
    var P04_T_max:Double = 0
    var P04_T_min:Double = 0
    var P04_curr:Double = 0
    var P04_dT:Double = 0
    var P04_dv:Double = 0
    var P04_kwh:Double = 0
    var P04_pow:Double = 0
    var P04_soc:Double = 0
    var P04_Errstate:Double = 0
    var P04_step:Double = 0
    var P04_v_max:Double = 0
    var P04_v_min:Double = 0
    var P04_vol:Double = 0
    
    var P05_T_max:Double = 0
    var P05_T_min:Double = 0
    var P05_curr:Double = 0
    var P05_dT:Double = 0
    var P05_dv:Double = 0
    var P05_kwh:Double = 0
    var P05_pow:Double = 0
    var P05_soc:Double = 0
    var P05_Errstate:Double = 0
    var P05_step:Double = 0
    var P05_v_max:Double = 0
    var P05_v_min:Double = 0
    var P05_vol:Double = 0


}

extension Encodable{
    var toDictionary: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else{
            return nil
        }
        
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
    }
}
