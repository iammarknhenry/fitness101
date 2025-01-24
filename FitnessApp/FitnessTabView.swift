//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Mark Henry on 24/01/2025.
//

import SwiftUI

struct FitnessTabView: View {
    
    @State var selectedTab = "Home"
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        //Change color of icon
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        
        //Change color of text under icon
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        
        //Apply appearance, comment this line and nothing will show.  
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("Historic Data")
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
