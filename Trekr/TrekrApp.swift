//
//  TrekrApp.swift
//  Trekr
//
//  Created by Tharushi Chamalsha on 2022-08-02.
//

import SwiftUI

@main
struct TrekrApp: App {
    
    
    @StateObject var locations = Locations()
     
    var body: some Scene {
        
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView{
                   WorldView()
                }
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                
                NavigationView{
                  TipView()
                }
                .tabItem{
                    Image(systemName: "wand.and.rays")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
