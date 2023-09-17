//
//  ContentView.swift
//  Project
//
//  Created by stdc_24 on 12/09/2023.
//

import SwiftUI

struct LocationDetail: View {
    
    
//    var string = "BIRD"
//    @State private var stringArray = [String]()
//    @State var valuex = ".offset(width:50)"
    @State private var isOptionVisible = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                Rectangle()
                    .foregroundColor(Color(red: 0.982, green: 0.928, blue: 0.802))
                    .frame(height: 50)
                
                //Image("logo_top")
                
                
                Rectangle()
                    .foregroundColor(Color(red: 0.982, green: 0.928, blue: 0.802))
                    .ignoresSafeArea()
                
                Text("Activities")
                    .foregroundStyle(Color.black)
                    .bold()
                    .offset(y:120)
                
                HStack {
                    
                    ZStack {
                        Image("Hiking")
                            .resizable()
                            .frame(width: 90, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 20)) // Adjust the corner radius as needed

                        Rectangle()
                            .foregroundColor(Color.black)
                            .frame(width: 90, height: 200)
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20)) // Adjust the corner radius as needed
                        
                        NavigationLink(destination: Activity_Page(), label: {
                            Text("HIKING")
                                .frame(width: 12)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        })

                    } .offset(y: 240)
                        .shadow(radius: 10)
                            
                            
                    ZStack {
                        Image("CaveExplore")
                            .resizable()
                            .frame(width: 90, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        Rectangle()
                            .foregroundColor(Color.black)
                            .frame(width: 90, height: 200)
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        NavigationLink(destination: ActivityPage2(), label: {
                            Text("CAVE")
                                .frame(width: 12)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        })
                    }.offset(y: 240)
                        .shadow(radius: 10)
                    
                            ZStack{
                                Image("Bird")
                                    .resizable()
                                    .frame(width: 90, height: 200)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                Rectangle()
                                    .foregroundColor(Color.black)
                                    .frame(width: 90, height: 200)
                                    .opacity(0.4)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                NavigationLink(destination: ActivityPage3(), label: {
                                    Text("BIRD")
                                        .frame(width: 12)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.center)
                                })
                            }.offset(y: 240)
                        .shadow(radius: 10)
                    
                    ZStack {
                        Image("CanopyWalk")
                            .resizable()
                            .frame(width: 90, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        Rectangle()
                            .foregroundColor(Color.black)
                            .frame(width: 90, height: 200)
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        NavigationLink(destination: ActivityPage4(), label: {
                            Text("CANOPY")
                                .frame(width: 12)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        })
                    }.offset(y: 240)
                    .shadow(radius: 10)
                    
                }
                
                VStack {
                    HStack{
                        
                        Text("Location Details")
                            //.offset(x:-55)
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            Image("Taman Negara")
                                .resizable()
                                .frame(width: 350, height: 200)
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 0)
                                }
    //                            .shadow(radius: 10)
                            
                            Image("Taman Negara")
                                .resizable()
                                .frame(width: 350, height: 200)
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 0)
                                }
    //                            .shadow(radius: 10)
                            
                            Image("Taman Negara")
                                .resizable()
                                .frame(width: 350, height: 200)
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 0)
                                }
    //                            .shadow(radius: 10)
                        }
                        .shadow(radius: 5)
                    }
                    
                    HStack{
                        ZStack {
                            Circle()
                                .frame(width: 50)
                                .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
                                .overlay {
                                    Circle().stroke(.black, lineWidth: 2)
                                }
//                            Image(systemName: "mappin.and.ellipse")
//                                .imageScale(.large)
//                                .foregroundStyle(Color.black)
                            
                            NavigationLink(destination:MapView(), label: {
                                Image(systemName: "mappin.and.ellipse").foregroundStyle(Color.black)
                            })
                        }
                        .offset(x:-15)
                        
                        //CircleIconPart
                        ZStack {
                            Button(action: {
                                        isOptionVisible.toggle()
                                    }) {
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
                                        }.offset(x: -3)
                                    }
                                    .popover(isPresented: $isOptionVisible, content: {
                                        // Add your popover content here
                                            
                                            VStack {
                                                Text("Link with our customer service here")
                                                    .font(.title)
                                                    .multilineTextAlignment(.center)
                                                    .offset(y:40)
                                                Spacer()
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 350, height: 90)
                                                        .foregroundStyle(Color.white)
                                                        .shadow(radius: 15)
                                                    HStack {
                                                        ZStack {
                                                            Circle()
                                                                .frame(width: 40)
                                                                .foregroundStyle(Color.green)
                                                            Image(systemName: "phone.fill")
                                                                .imageScale(.large)
                                                        }
                                                        Text("+60 9-266 3234")
                                                            .foregroundColor(Color.blue)
                                                    }
                                                    
                                                    
                                                }
                                            }
                                        
                                        

                                        
                                        
                                    })
                            
                        }.offset(x:-3)
                        
                        
                        
                        ZStack{
                            Circle()
                                .frame(width: 50)
                                .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
                                .overlay {
                                    Circle().stroke(.black, lineWidth: 2)
                                }
                            
//                            Button{
//
//                            }label:{
//                                Image(systemName: "star.fill").imageScale(.large)
//                                    .foregroundStyle(Color.black)
//
//
//                            }
                            NavigationLink(destination: RatingPage(), label: {
                                Image(systemName: "star.fill").foregroundStyle(Color.black)
                            })
                        }.offset(x:8)
                        
                        ZStack{
                            
                            Circle()
                                .frame(width: 50)
                                .foregroundStyle(Color(red: 0.825, green: 0.64, blue: 0.452))
                                .overlay {
                                    Circle().stroke(.black, lineWidth: 2)
                                }
                            
                            Image(systemName: "figure.walk")
                                .imageScale(.large)
                                .foregroundStyle(Color.black)
                            
                        }.offset(x:15)
                    }
                    .offset(y:9)
                    
                    //DisplayDetails
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350, height: 150)
                            .foregroundStyle(Color.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth:0)
                            }
                        .offset(y:20)
                        .shadow(radius: 10)
                        
                        Text("Taman Negara")
                            .bold()
                            .offset(y:-40)
                        
                        Text("Dattebayo nani kore")
                            .multilineTextAlignment(.center)
                        
                    }
                }
                .padding(10)
                .offset(y: -148)
                
                
//                VStack(spacing: -21){
//                    ForEach(stringArray, id:\.self){
//                        i in Text("\(i)\n")
//                            .foregroundStyle(Color.white)
//
//                            .offset(x:50,y:250)
//
//                    }
//                }.onAppear{
//                    for i in string {stringArray.append(String(i))
//                    }
//                }
            }
        }//.navigationTitle("Location Details")
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            LocationDetail()
        }
    }
}
