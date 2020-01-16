//
//  Mage.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 15/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Mage: Champion {
    var name: String
    var life: Int
    var kills: Int
    var deaths: Int
    var damage: Int = 0
    var spell: Int = 70
    var defense: Int = 30
    
    init(name: String, life: Int, kills: Int, deaths: Int) {
        self.name = name
        self.life = life
        self.kills = kills
        self.deaths = deaths
    }
    
    func attack(champion2: Champion) {
        let random = Int.random(in: 1...50)
        let champion2Type = type(of: champion2)
        
        damage = random + spell
        
        if champion2Type == Mage.self {
            let mage = champion2 as! Mage
            mage.life -= damage - mage.defend()

        } else if champion2Type == Tank.self {
            let tank = champion2 as! Tank
            tank.life -= damage - tank.defend()
            
        } else if champion2Type == Shooter.self {
            let shooter = champion2 as! Shooter
            shooter.life -= damage - shooter.defend()
            
        } else if champion2Type == Support.self {
            let support = champion2 as! Support
            support.life -= damage - support.defend()
        }
    }
    
    func defend() -> Int {
        return defense
    }
    
    func history() {
        print("Campeão: \(name), abates: \(kills), mortes: \(deaths).")
    }
    
}
