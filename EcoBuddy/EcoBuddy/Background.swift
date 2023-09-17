//
//  Background.swift
//  EcoBuddy
//
//  Created by stdc_15 on 16/09/2023.
//

import SwiftUI

struct Background: View {
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

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
