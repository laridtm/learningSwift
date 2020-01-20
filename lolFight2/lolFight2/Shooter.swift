//
//  Shooter.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 16/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Shooter: Champion {
    var name: String
    var life: Int
    var kills: Int
    var deaths: Int
    var damage: Int = 0
    var ultimate: Int = 95
    var defense: Int = 30
    
    init(name: String, life: Int, kills: Int, deaths: Int) {
        self.name = name
        self.life = life
        self.kills = kills
        self.deaths = deaths
    }
    
    func attack(champion2: inout Champion) {
        let random = Int.random(in: 1...50)
       
        damage = random + ultimate
       
        champion2.life -= damage - champion2.defend()
    }
    
    func defend() -> Int {
        return defense
    }
    
    func history() {
        print("Campeão: \(name), abates: \(kills), mortes: \(deaths).")
    }
    
    
}
