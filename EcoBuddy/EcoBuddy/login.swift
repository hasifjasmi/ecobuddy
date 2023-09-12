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
            
            //Z index = 0
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
//            Z index = 1
            //login text
            VStack {
                Text("Login")
                .bold()
                .font(.custom("Avenir Next Condensed", size: 44))
                .padding()
                Rectangle()
                    .foregroundStyle(Color(red: 0.982, green: 0.928, blue: 0.802))
                        .frame(height: 100)
                    
            }
            //email password and remember me
            VStack{
                Spacer()
                    .frame(height: 200)
                Text("Email")
                    .bold()
                    .font(.custom("Avenir Next Condensed", size: 25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Rectangle()
                    .foregroundColor(Color.black.opacity(0.5))

                Rectangle()
                    .frame(width: 300, height: 45)
                    .foregroundColor(Color.orange.opacity(0.0))
                    .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.black, lineWidth: 3))
                    
                Text("Paswword")
                    .bold()
                    .font(.custom("Avenir Next Condensed", size: 25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    
                Text("Forgot Password")
                    .font(.custom("Avenir Next Condensed", size: 25))
                
                HStack{
                    Rectangle()
                        .frame(width: 20,height: 20)
                    Text("Remember me")
                        .font(.custom("Avenir Next Condensed", size: 25))
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity,alignment: .leading)
                
//                button login
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 280,height: 60)
                    Text("Login")
                        .foregroundColor(Color.white)
                        .font(.custom("HelveticaNeue", size: 25))
                        .bold()
                    
                }
                
                Rectangle()
                    .frame(width:200,height: 2)
                
            }.frame(height: 40)
                
            
                
        }// end of zstack main
        .ignoresSafeArea()
        .background(Color(red: 0.982, green: 0.928, blue: 0.802))
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
