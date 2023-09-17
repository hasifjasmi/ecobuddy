//
//  RatingPage.swift
//  EcoBuddy_FInal
//
//  Created by stdc_24 on 11/09/2023.
//

import SwiftUI


struct RatingPage: View {
    
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color(red: 0.982, green: 0.928, blue: 0.802))
            
            VStack{
                Text("Rating")
                    .font(.title)
                Spacer().frame(height: 10)
            
                ZStack {
                    Rectangle()
                        .opacity(0.3)
                    HStack {
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            Image(systemName: "star.fill")
                                .imageScale(.large)
                                .foregroundStyle(Color.yellow)
                                }
                    }
                }
                Spacer().frame(height: 30)
                
                ZStack{

                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(Color.white)
                    
                    VStack{
                        
                        Text("Feedback")
                                ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(height: 200)
                                    .foregroundStyle(Color.white)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 30).stroke(.black, lineWidth: 1)
                                    }
                                    
                                    //first rating box
                                HStack{
                                    Circle()
                                        .frame(width: 60)
                                        .offset(x:10)
                                    VStack{
                                        HStack {
                                            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) {
                                                item in
                                                Image(systemName: "star.fill")
                                                    .imageScale(.small)
                                                    .foregroundStyle(Color.yellow)
                                                Spacer().frame(width: -20)
                                            }
                                        }.offset(x: -85)
                                        Text("Amir")
                                            .frame(maxWidth:.infinity, alignment: .leading)
                                    }.offset(x:10)
                                }.offset(y: -60)
                                
                                Text("sadasdasd")
                            }
                           
                        ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 200)
                            .foregroundStyle(Color.white)
                            .overlay {
                                RoundedRectangle(cornerRadius: 30).stroke(.black, lineWidth: 1)
                            }
                            
                            //second rating box
                        HStack{
                            Circle()
                                .frame(width: 60)
                                .offset(x:10)
                            VStack{
                                HStack {
                                    ForEach(0 ..< 5) {
                                        item in
                                        Image(systemName: "star.fill")
                                            .imageScale(.small)
                                            .foregroundStyle(Color.yellow)
                                        Spacer().frame(width: -20)
                                    }
                                }.offset(x: -85)
                                Text("Anas")
                                    .frame(maxWidth:.infinity, alignment: .leading)
                            }.offset(x:10)
                        }.offset(y: -60)
                        
                        Text("sadasdasd")
                    }
                           
                        
                        ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 200)
                            .foregroundStyle(Color.white)
                            .overlay {
                                RoundedRectangle(cornerRadius: 30).stroke(.black, lineWidth: 1)
                            }
                            
                            //third rating box
                        HStack{
                            Circle()
                                .frame(width: 60)
                                .offset(x:10)
                            VStack{
                                HStack {
                                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) {
                                        item in
                                        Image(systemName: "star.fill")
                                            .imageScale(.small)
                                            .foregroundStyle(Color.yellow)
                                        Spacer().frame(width: -20)
                                    }
                                }.offset(x: -85)
                                Text("Khadijah")
                                    .frame(maxWidth:.infinity, alignment: .leading)
                            }.offset(x:10)
                        }.offset(y: -60)
                        
                        Text("sadasdasd")
                    }
                            
                        }.padding()
                }
                
                
                
            }
            .padding()
        }
    }
}
    



struct RatingPage_Previews: PreviewProvider {
    static var previews: some View {
        RatingPage()
    }
}
