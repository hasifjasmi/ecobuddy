//
//  RatingPage.swift
//  EcoBuddy_FInal
//
//  Created by stdc_24 on 11/09/2023.
//

import SwiftUI


struct RatingPage: View {
    
    @Binding var rating:Int
    
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        
        VStack {
            
            ZStack {
                Rectangle()
                    .frame(width: 500, height: 100)
                
                Text("Give Rating")
                    .foregroundColor(Color.white)
                    .offset(y:-30)
                    .font(.subheadline)
                
                HStack{
                    if label.isEmpty == false {
                        Text(label)
                    }
                    
                    ForEach(1..<maximumRating + 1, id: \.self){ number in
                        image(for:number)
                            .foregroundColor(number > rating ? offColor : onColor)
                            .onTapGesture {
                                rating = number
                                }
                            }
                    
                        }
                    }
                }
            
        }
    
    func image(for number: Int) -> Image{
        if number > rating {
            return offImage ?? onImage
        }else {
            return onImage
        }
    }
}


struct RatingPage_Previews: PreviewProvider {
    static var previews: some View {
        RatingPage(rating: .constant(4))
    }
}
