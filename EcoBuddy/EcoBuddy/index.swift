//
//  index.swift
//  EcoBuddy
//
//  Created by stdc_15 on 13/09/2023.
//

import SwiftUI

struct index: View {
    var body: some View {
        TabView{
            Home().tabItem{
                Label("Home",systemImage: "house.fill")
            }
            login().tabItem{
                Label("Catalogue",systemImage: "books.vertical.fill")
            }
            ContentView().tabItem{
                Label("Start",systemImage: "plus.app.fill")
            }
            ContentView().tabItem{
                Label("Leaderboard",systemImage: "crown.fill")
            }
            ContentView().tabItem{
                Label("Profile",systemImage: "person.fill")
            }

        }
    }
}

struct index_Previews: PreviewProvider {
    static var previews: some View {
        index()
    }
}
