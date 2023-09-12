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
    @State private var email: String = ""
    @State private var password: String = ""
    
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
                    .frame(height: 350)
                
                VStack{
                //email field
                VStack (spacing: -17) {
                    
                    //email text
                    HStack {
                        Spacer()
                            .frame(width: 35,height: -24)
                        Text("Email")
                            .bold()
                            .font(.custom("Avenir Next Condensed", size: 25))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                    }
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color(red: 0.982, green: 0.928, blue: 0.798))
                            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 3))
                        
                        HStack {
                            TextField(
                            "",
                            text: $email
                            )
                            .autocorrectionDisabled(true)
                            .textFieldStyle(.plain)
                            .frame(width: 300   , height: 45)
                        }
                    
                    }
                    
                    
                }

                    VStack (spacing: -17) {
                        
                        //password text
                        HStack {
                            Spacer()
                                .frame(width: 35,height: -24)
                            Text("Password")
                                .bold()
                                .font(.custom("Avenir Next Condensed", size: 25))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                        }
                        
                        
                        
                        //input password
                        ZStack {
                            Rectangle()
                                .frame(width: 300, height: 40)
                                .foregroundColor(Color(red: 0.982, green: 0.928, blue: 0.798))
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 3))
                            
                            HStack {
                                TextField(
                                    "",
                                    text: $password
                                )
                                .autocorrectionDisabled(true)
                                .textFieldStyle(.plain)
                                .frame(width: 300, height: 45)
                            }
                            
                        }
                    }
                    
                    
                }
                    
                Text("Forgot Password")
                    .font(.custom("Avenir Next Condensed", size: 20))
                                 
                //remember me
                HStack{
                    Rectangle()
                        .frame(width: 40)
                        .foregroundColor(.red).opacity(0.0)
                    Rectangle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(red: 0.982, green: 0.928, blue: 0.798))
                        .overlay(Rectangle().stroke(Color.black, lineWidth: 3))
                    Text("Remember me")
                        .font(.custom("Avenir Next Condensed", size: 25))
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity,alignment: .leading)
                
//                button login
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 280,height: 55)
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
