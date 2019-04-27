//
//  Game.swift
//  Videogames
//
//  Created by Usuário Convidado on 26/04/19.
//  Copyright © 2019 Usuário Convidado. All rights reserved.
//

import Foundation
class Game : Codable{
    let name: String;
    let manufacturer: String;
    let releaseDate: String;
    let unitsSold: Double;
    let image : String;
    
    
    init(name:String,manufacturer: String,releaseDate: String,unitsSold: Double,image : String){
        self.name = name;
        self.manufacturer = manufacturer;
        self.releaseDate = releaseDate;
        self.unitsSold = unitsSold;
        self.image = image;
    }
    
}
