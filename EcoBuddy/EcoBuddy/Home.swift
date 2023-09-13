//
//  Home.swift
//  EcoBuddy
//
//  Created by stdc_15 on 12/09/2023.
//

import SwiftUI

struct Home: View {
    let places = ["Taman Negara Malaysia","Kuan Wellness EcoPark", "Taman Eko Rimba", "Bukit Jelutong Eco Community"]
    let state = ["Pahang","Selangor","Selangor","Selangor"]
    @State var j:Int = 0

    var width = 110.0
    var height = 50.0
    var body: some View {
        ZStack {
            ContentView()
            
            VStack{
                RoundedRectangle(cornerRadius: 23)
                    .foregroundColor(Color.white)
                    .frame(width:360,height:50)
                Spacer().frame(height: 25)
                HStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: 23)
                            .foregroundColor(Color.white)
                        .frame(width:width,height:height)
                        Text("Hiking")
                            .foregroundColor(Color.black)
                            .font(.custom("HelveticaNeue", size: 16))
                        .fontWeight(.medium)                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 23)
                            .foregroundColor(Color.white)
                        .frame(width: width,height:height)
                        Text("Kayaking")
                            .foregroundColor(Color.black)
                            .font(.custom("HelveticaNeue", size: 16))
                        .fontWeight(.medium)
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 23)
                            .foregroundColor(Color.white)
                            .frame(width:width,height:height)
                        Text("Sightseeing")
                            .foregroundColor(Color.black)
                            .font(.custom("HelveticaNeue", size: 16))
                        .fontWeight(.medium)
                    }
                    
                    
                }
                
                HStack {
                    Text("Good Morning! $name")
                        .font(.custom("Avenir Next Condensed", size: 25))
                        .bold()
                    .padding( )
                    Spacer()
                }
                
                Spacer().frame(height: 400)
            }
            

            //item 3
            VStack {
                Spacer().frame(height: 300)
                ScrollView{
                    VStack {
                        
                        ForEach(Array(zip(places, state)), id:\.0){place in
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .frame(width: 330)
                                HStack {
                                    Image("\(place.0)")
                                        .resizable()
                                        
                                        .frame(width: 140,height:120)
                                        .cornerRadius(15)
                                    Spacer().frame(width: 16)
                                    
                                    VStack {
                                        Text("\(place.0)")
                                            .font(.custom("Impact", size: 23))
                                            .bold()
                                        
                                        HStack {
                                            Text("\(place.1)")
                                                .font(.custom("Avenir Next Condensed", size: 23))
                                            Spacer().frame(width: 77)
                                        }
                                    }
                                    
                                }
                            }.frame(width: 330, height:150) //affects the individuals rectangle of the park
                            
                            
                        }
                    }
                        
                        
                   
                }
            }
            
            VStack {
                Spacer()
                    .frame(height: 750 )
                
            }
        }
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
