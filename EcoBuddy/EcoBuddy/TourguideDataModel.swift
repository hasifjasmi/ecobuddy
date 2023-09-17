//
//  TourguideDataModel.swift
//  EcoBuddy
//
//  Created by stdc_15 on 16/09/2023.
//

import Foundation

struct tourguide: Identifiable, Hashable {
    var id = UUID()
    var photoName: String
    var name: String
    var description: String
}

let testData = [
    tourguide(photoName: "mad 1", name: "Kassim Selamat", description: "saje saje guide"),
    tourguide(photoName: "rosmawati", name: "Rosmawati", description: "Suka Ros")
    

]
