//
//  ContentView.swift
//  Project
//
//  Created by stdc_24 on 12/09/2023.
//

import SwiftUI

struct LocationDetail: View {
    var body: some View {
        ZStack{
            
            
            
            
            Rectangle()
                .foregroundColor(Color(red: 0.982, green: 0.928, blue: 0.802))
                .frame(height: 50)
            
            //Image("logo_top")
            
            
            Rectangle()
                .foregroundColor(Color(red: 0.982, green: 0.928, blue: 0.802))
                .ignoresSafeArea()
            
            
//            Rectangle()
//                .frame(width: 400, height: 400)
//                .offset(y:300)
            
            //            Rectangle()
            //                .frame(width: 400, height: 150)
            //                .offset(y:400)
            //                .foregroundStyle(Color.gray)
            
//            Rectangle()
//                .frame(width: 397,height: 100)
//                .cornerRadius(25)
//                .offset(y:375)
//                .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
//
            Text("Activities")
                .foregroundStyle(Color.black)
                .bold()
                .offset(y:120)
            
            HStack {
                
//                RoundedRectangle(cornerRadius: 20)
//                .frame(width: 90, height: 170)
//                .offset(y: 225)
//                .foregroundStyle(Color.white)
                
                ZStack {
                    Image("Hiking")
                        .resizable()
                        .frame(width: 90, height: 170)
                        .offset(y: 225)
                    .aspectRatio(contentMode: .fit)
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: 90, height: 170)
                        .offset(y: 225)
                        .opacity(0.3)
                }
//                    .clipShape(RoundedRectangle(cornerRadius: 20))
//                    .overlay {
//                        RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 2)
////                    }
                        
                        
                ZStack {
                    Image("CaveExplore")
                        .resizable()
                        .frame(width: 90, height: 170)
                        .offset(y: 225)
                    .aspectRatio(contentMode: .fit)
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: 90, height: 170)
                        .offset(y: 225)
                        .opacity(0.3)
                }
                
                        ZStack{
                            Image("Bird")
                                .resizable()
                                .frame(width: 90, height: 170)
                                .offset(y: 225)
                                .aspectRatio(contentMode: .fit)
                            Rectangle()
                                .foregroundColor(Color.black)
                                .frame(width: 90, height: 170)
                                .offset(y: 225)
                                .opacity(0.3)
                        }
                
                ZStack {
                    Image("CanopyWalk")
                        .resizable()
                        .frame(width: 90, height: 170)
                        .offset(y: 225)
                    .aspectRatio(contentMode: .fit)
                    
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: 90, height: 170)
                        .offset(y: 225)
                        .opacity(0.3)
                }
                
                
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 90, height: 170)
//                    .offset(y: 225)
//                    .foregroundStyle(Color.white)
//
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 90, height: 170)
//                    .offset(y: 225)
//                    .foregroundStyle(Color.white)
//
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 90, height: 170)
//                    .offset(y: 225)
//                    .foregroundStyle(Color.white)
            }
            
            VStack {
                HStack{
                    Image(systemName: "return")
                        .imageScale(.large)
                        .offset(x: -60)
                    Spacer()
                        .frame(width: 80)
                    
                    Text("Location Details")
                        .offset(x:-55)
                }
                
                Image("Taman Negara")
                    .resizable()
                    .frame(width: 350, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 2)
                    }
                //                RoundedRectangle(cornerRadius: 20)
                //                    .frame(height: 200)
                
                HStack{
                    ZStack {
                        Circle()
                            .frame(width: 50)
                            .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
                            .overlay {
                                Circle().stroke(.black, lineWidth: 2)
                            }
                        Image(systemName: "pin")
                            .imageScale(.large)
                            .foregroundStyle(Color.black)
                        
                    }
                    .offset(x:-55)
                    
                    //CircleIconPart
                    ZStack {
                        Circle()
                            .frame(width: 50)
                            .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
                            .overlay {
                                Circle().stroke(.black, lineWidth: 2)
                            }
                        
                        Image(systemName: "phone.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color.black)
                    }.offset(x:-20)
                    
                    ZStack{
                        Circle()
                            .frame(width: 50)
                            .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
                            .overlay {
                                Circle().stroke(.black, lineWidth: 2)
                            }
                        
                        Image(systemName: "star.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color.black)
                        
                    }.offset(x:20)
                    
                    ZStack{
                        
                        Circle()
                            .frame(width: 50)
                            .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
                            .overlay {
                                Circle().stroke(.black, lineWidth: 2)
                            }
                        
                        Image(systemName: "person")
                            .imageScale(.large)
                            .foregroundStyle(Color.black)
                        
                    }.offset(x:55)
                }
                .offset(y:9)
                
                //DisplayDetails
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 150)
                    .foregroundStyle(Color.white)
                    .overlay{
                        RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth:2)
                    }
                    .offset(y:20)
            }
            .padding(10)
            .offset(y: -148)
            
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            LocationDetail()
        }
    }
}
