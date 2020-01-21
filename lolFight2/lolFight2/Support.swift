//
//  Support.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 16/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Support: Champion {
    var name: String
    var life: Int
    var kills: Int
    var deaths: Int
    var damage: Int = 0
    var attack: Int = 40
    var shield: Int = 40
    
    init(name: String, life: Int, kills: Int, deaths: Int) {
        self.name = name
        self.life = life
        self.kills = kills
        self.deaths = deaths
    }
    
    func attack(champion2: inout Champion) {
         let random = Int.random(in: 1...50)
        
         damage = random + attack
        
         champion2.life -= damage - champion2.defend()
    }
    
    func defend() -> Int {
        return shield
    }
    
    func history() {
        print("Campeão: \(name), abates: \(kills), mortes: \(deaths).")
    }
    
    
}
