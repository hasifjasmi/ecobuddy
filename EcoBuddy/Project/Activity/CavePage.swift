//
//  Activity Page.swift
//  Project
//
//  Created by stdc_24 on 13/09/2023.
//

import SwiftUI

struct ActivityPage2: View {
    var body: some View {
        ZStack{
            
            Image("CaveExplore")
                .resizable()
                .ignoresSafeArea()
                
            Rectangle()
                .frame(width: 800, height: 1000)
                .ignoresSafeArea()
                .opacity(0.5)
                .offset(y:40)
            
            VStack{
                Text("Cave Explore")
                    .offset(y:-220)
                    .font(.title)
                Text("Description")
                    .offset(y:-200)
                    .font(.title2)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor")
                    .multilineTextAlignment(.center)
                    .offset(y:-150)
                
                Text("Equipment")
                Text("1. qwdqudewiubfuiqwd")
                
                
                
            }
            .padding(250)
            .foregroundStyle(Color.white)
            
            
        }
    }
}

struct ActivityPage2_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPage2()
    }
}
