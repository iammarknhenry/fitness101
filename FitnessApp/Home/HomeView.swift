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
    
    var mockActivities = [
        Activity(id: 0, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "6,234"),
        Activity(id: 1, title: "Today Steps", subtitle: "Goal 1,000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(id: 2, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "6,234"),
        Activity(id: 3, title: "Today Steps", subtitle: "Goal 60,000", image: "figure.walk", tintColor: .purple, amount: "6,234")
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .green, duration: "23 mins", date: "Aug 3", calories: "341 kcal"),
        Workout(id: 1, title: "Swimming", image: "figure.pool.swim", tintColor: .red, duration: "13 mins", date: "Aug 4", calories: "324 kcal"),
        Workout(id: 2, title: "Running", image: "figure.run", tintColor: .green, duration: "42 mins", date: "Aug 5", calories: "341 kcal"),
        Workout(id: 3, title: "Running", image: "figure.run", tintColor: .green, duration: "30 mins", date: "Aug 6", calories: "341 kcal")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators:false) {
                VStack (alignment: .leading) {
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
                    HStack{
                        Text("Fitness Activity")
                            .font(.title2)
                        Spacer()
                        
                        Button{
                            print("Show more")
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    LazyVGrid(columns: Array(repeating: GridItem(spacing:20), count: 2)){
                        ForEach(mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack{
                        Text("Recent Workouts")
                            .font(.title2)
                        Spacer()
                        
                        NavigationLink{
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack{
                        ForEach(mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
