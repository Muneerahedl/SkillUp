//
//  ContentView.swift
//  SkiilUp
//
//  Created by Maha Alassaf on 20/05/1444 AH.
//

import SwiftUI
import CloudKit

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView{
                //Home
                Home()
            }.navigationBarHidden(true)
            .tabItem{
                Label("Skills" , systemImage: "list.bullet")
            }
            //Fav
            NavigationView{
            Favourite()
        }.navigationBarHidden(true)
        .tabItem{
                Label("Favourites" , systemImage: "heart.fill")
            }
            
            //Booking
            NavigationView{
                Booking()
            }
            .navigationBarHidden(true)
            .tabItem{
                Label("Bookings" , systemImage: "calendar")
            }
            //Profile
            NavigationView{
                LearnerProfile(vm: LearnerListViewModel(container: CKContainer.default()))
            }
            .navigationBarHidden(true)
            .tabItem{
                Label("Profile" , systemImage: "person.fill")
            }
        }.accentColor(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
