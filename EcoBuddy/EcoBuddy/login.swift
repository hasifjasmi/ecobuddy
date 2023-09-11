//
//  login.swift
//  EcoBuddy
//
//  Created by stdc_15 on 12/09/2023.
//

import SwiftUI
class MyButton: UIButton {
    override var titleLabel: UILabel?  {
        get {
            let label = super.titleLabel
            label?.font = UIFont(name: "Avenir", size: 17)!
            return label
        }
    }
}

struct login: View {
    var size = 180.00
    let label = UILabel()
    
    var body: some View {
        ZStack {
            
            VStack {
                //logo
                Rectangle()
                    .foregroundStyle(Color(red: 0.982, green: 0.928, blue: 0.802))
                    .frame(height: 70)
                
                Image("LogoBig")
                    .resizable()
                    .frame(width: size,height: size)
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading)

                        
                    Rectangle()
                    .foregroundStyle(Color(red: 0.982, green: 0.928, blue: 0.802))
                
            }
            //login text
            Text("Login")
                
            
        
            
                
        }
        .ignoresSafeArea()
        .background(Color(red: 0.982, green: 0.928, blue: 0.802))
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
