//
//  Location.swift
//  Trekr
//
//  Created by Tharushi Chamalsha on 2022-08-02.
//

import Foundation

struct Location:Decodable{
    
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let heroPicture: String
    
    static let example = Location (id:1,name:"The highlands",country:"United states",description:"Nice place to visit",
                           more:"more text here.",heroPicture: "highlands"
    )
}
