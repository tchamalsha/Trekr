//
//  Locations.swift
//  Trekr
//
//  Created by Tharushi Chamalsha on 2022-08-02.
//

import Foundation

class Locations:ObservableObject{
    
    let places:[Location]
    
    var primary:Location{
        places[0]
    }
    
    init(){
        let url=Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self,from:data)
        
    }
    
}
