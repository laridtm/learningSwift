//
//  Fight.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 15/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Fight {
    var champion1: Champion
    var champion2: Champion
    var damage: Int = 0
    
    init(champion1: Champion, champion2: Champion) {
        self.champion1 = champion1
        self.champion2 = champion2
    }
    
    func fight() {
        
        while champion1.life > 0 && champion2.life > 0 {
            champion1.attack(champion2: champion2)
            print("Ataque \(champion1.name) -> \(champion1.damage) - \(champion2.defend()) vida \(champion2.name): \(champion2.life)")
            if champion2.life > 0 {
                champion2.attack(champion2: champion1)
                print("Ataque \(champion2.name) -> \(champion2.damage) - \(champion1.defend()) vida \(champion1.name): \(champion1.life) \n")
            }
        }
        
        if champion1.life > champion2.life {
             champion1.kills += 1
             champion2.deaths += 1
             print("\nVictory: \(champion1.name) \nDefeat: \(champion2.name)")
        } else {
             champion2.kills += 1
             champion2.deaths += 1
             print("Victory: \(champion1.name) \nDefeat: \(champion2.name)")
        }
    }
    
}
