//
//  Animal.swift
//  CollectionView
//
//  Created by Moussa SOW on 26/04/2021.
//

import Foundation

struct Animal {
    var name: String
    var desc: String
    var origine: String
    var status: Protection
    var imageString: String
}


enum Protection {
    case mineure
    case danger
}
