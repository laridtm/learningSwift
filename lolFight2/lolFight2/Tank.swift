//
//  Tank.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 15/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Tank: Champion {
    var name: String
    var life: Int
    var kills: Int
    var deaths: Int
    var damage: Int = 0
    var attack: Int = 40
    var armor: Int = 60
    
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
        return armor
    }
    
    func history() {
        print("Campeão: \(name), abates: \(kills), mortes: \(deaths).")
    }
}
