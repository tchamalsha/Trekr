//
//  ContentView.swift
//  Trekr
//
//  Created by Tharushi Chamalsha on 2022-08-02.
//

import SwiftUI

struct ContentView: View {
    let location:Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .multilineTextAlignment(.leading)
                .padding()
            
            Text("Did you know?")
                .bold()
            
            Text(location.more)
                .multilineTextAlignment(.leading)
                .padding()
            
        }
        .navigationTitle("Discover")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Locations().primary)
    }
}
