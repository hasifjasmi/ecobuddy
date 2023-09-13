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
                    .frame(height: 40)
                
                Image("logo_top")
                
                
                Rectangle()
                    .foregroundStyle(Color(red: 0.982, green: 0.928, blue: 0.802))
                    
            }
            .ignoresSafeArea()
            .background(Color(red: 0.98, green: 0.928, blue: 0.802))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct bottomNav: View {
    var body: some View {
        Text("asdasds")
//        ZStack {
//            Rectangle()
//                .frame(width: 397,height: 90)
//                .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
//            
//            HStack (spacing: 20){
//                Button{
//                    
//                } label: {
//                    Image("home")
//                        .resizable()
//                        .frame(width: 50,height: 50)
//                        .aspectRatio(contentMode: .fit)
//                }
//                Button{
//                    
//                } label: {
//                    Image("maps")
//                        .resizable()
//                        .frame(width: 40,height: 40)
//                        .aspectRatio(contentMode: .fit)
//                }
//                Button{
//                    
//                } label: {
//                    Image("play-button")
//                        .resizable()
//                        .frame(width: 40,height: 40)
//                        .aspectRatio(contentMode: .fit)
//                }
//                
//                HStack (spacing: 0) {
//                    Button{
//                        
//                    } label: {
//                        Image("leaderboard")
//                            .resizable()
//                            .frame(width: 40,height: 40)
//                            .aspectRatio(contentMode: .fit)
//                    }
//                    Button{
//                        
//                    } label: {
//                        Image("person")
//                            .resizable()
//                            .frame(width: 70,height: 70)
//                            .aspectRatio(contentMode: .fit)
//                    }
//                    
//                }
//                
//            }
//        }
    }
}

struct background: View {
    var body: some View {
        
            Rectangle()
                .foregroundStyle(Color(red: 0.982, green: 0.928, blue: 0.802))
                .frame(height: 50)
            
            Image("logo_top")
            
            
            Rectangle()
                .foregroundStyle(Color(red: 0.982, green: 0.928, blue: 0.802))
        
    }
}
