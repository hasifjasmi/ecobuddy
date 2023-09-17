//
//  TourGuide.swift
//  EcoBuddy
//
//  Created by stdc_15 on 16/09/2023.
//

import SwiftUI

struct TourGuide: View {
    var tourguides: [tourguide] = testData

    
    var body: some View {
        VStack{
            NavigationStack{
                
                ZStack {
                    Rectangle().frame(height: 20)
                    
                    List(tourguides){ tourguider in
                        NavigationLink(value: tourguider) {
                            VStack{
                                HStack{
                                    Image(tourguider.photoName)
                                        .resizable()
                                        .frame(width: 64, height: 64)
                                        .aspectRatio(contentMode: .fit)
                                        .overlay{Circle().stroke( .black,lineWidth: 3)}
                                        .padding()
                                        
                                    VStack{
                                        
                                        HStack {
                                            Text(tourguider.name)
                                                .font(.custom("Avenir Next Condensed", size: 19))
                                                .bold()
                                        }
                                        
                                        HStack {
                                            Text(tourguider.description)
                                                .font(.custom("Avenir Next Condensed", size: 15))
                                                .multilineTextAlignment(.leading)
                                                .offset(x:-20)
                                        
                                        }
                                        
                                        
                                        
                                    }
                                }
                            }.navigationTitle("Tourguide")
                                .navigationDestination(for: tourguide.self, destination: {tourguider in Text(tourguider.name)
                                        .opacity(0.0)
                                    
                                })
                                
                        }
                        
                    }
                }
                
                
            }
                .background(Color(red: 0.98, green: 0.928, blue: 0.802))
            
            
            
        }.background(Color(red: 0.98, green: 0.928, blue: 0.802))
        
        
    }
}

struct TourGuide_Previews: PreviewProvider {
    static var previews: some View {
        TourGuide(tourguides: testData)
    }
}
