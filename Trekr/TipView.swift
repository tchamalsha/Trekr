//
//  TipView.swift
//  Trekr
//
//  Created by Tharushi Chamalsha on 2022-08-03.
//

import SwiftUI

struct TipView: View {
    let tips:[Tip]
    
    init(){
        let url=Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self,from:data)
        
    }
    
    var body: some View {
        List(tips,id: \.text, children:\.children){
            tip in
            if tip.children != nil{
                Label(tip.text,systemImage: "quote.bubble")
                    .font(.headline)
            }else{
                Text(tip.text)
            }
            
        }
        .navigationTitle("Tips")
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
