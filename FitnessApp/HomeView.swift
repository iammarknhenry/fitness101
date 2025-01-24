//
//  HomeView.swift
//  FitnessApp
//
//  Created by Mark Henry on 24/01/2025.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var body: some View {
        ScrollView(showsIndicators:false) {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer()
                    VStack {
                        VStack(alignment: .leading, spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            Text("123 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            Text("8 hours")
                                .bold()
                        }
//                        .padding(.bottom)
                    }
                    Spacer()
                    ZStack {
                        ProgressCircleView(color: .red, progress: $calories, goal: 600)
                        ProgressCircleView(color: .green, progress: $active, goal: 60).padding(.all, 20)
                        ProgressCircleView(color: .blue, progress: $stand, goal: 12).padding(.all, 40)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
