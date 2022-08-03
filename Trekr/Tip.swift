//
//  Tip.swift
//  Trekr
//
//  Created by Tharushi Chamalsha on 2022-08-03.
//

import Foundation

struct Tip:Decodable{
    
    let text :String
    let children:[Tip]?
    
    
}
