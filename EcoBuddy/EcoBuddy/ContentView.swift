//
//  ContentView.swift
//  EcoBuddy
//
//  Created by stdc_15 on 11/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            //background
            VStack {
                Rectangle()
                    .foregroundStyle(Color(red: 0.982, green: 0.928, blue: 0.802))
                    .frame(height: 50)
                Image("logo_top")
                    
                
                Rectangle()
                    .foregroundStyle(Color(red: 0.982, green: 0.928, blue: 0.802))

                
                //bottom navigation
                ZStack {
                    Rectangle()
                        .frame(width: 397,height: 100)
                        .cornerRadius(25)
                    .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
                    
                    HStack (spacing: 20){
                        Image("home")
                            .resizable()
                            .frame(width: 60,height: 60)
                            .aspectRatio(contentMode: .fit)
                        Image("maps")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .aspectRatio(contentMode: .fit)
                        Image("play-button")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .aspectRatio(contentMode: .fit)
                        
                        HStack (spacing: 0) {
                            Image("leaderboard")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .aspectRatio(contentMode: .fit)
                                
                            Image("person")
                                .resizable()
                                .frame(width: 80,height: 80)
                            .aspectRatio(contentMode: .fit)
                        }
                            
                    }
                }
                    
            }
            .ignoresSafeArea()
            .background(Color(red: 0.982, green: 0.928, blue: 0.802))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
