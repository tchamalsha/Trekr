//
//  Location.swift
//  Trekr
//
//  Created by Tharushi Chamalsha on 2022-08-02.
//

import Foundation

struct Location:Decodable,Identifiable{
    
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let heroPicture: String
    let latitude:Double
    let longitude:Double
    
    static let example = Location (id:1,name:"The highlands",country:"United states",description:"Nice place to visit",
                                   more:"more text here.",heroPicture: "highlands",latitude: 35.6532,longitude: -83.5070
    )
}
