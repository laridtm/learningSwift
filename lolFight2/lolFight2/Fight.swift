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
    
//    func attack() {
//        let random = Int.random(in: 1...50)
//        let champion1Type = type(of: champion1)
//
//        print(random)
//
//        if champion1Type == Mage.self {
//            let mage = champion1 as! Mage
//            damage = random + mage.spell
//            champion2.life -= damage - champion2.defend()
//
//        } else if champion1Type == Tank.self {
//            let tank = champion1 as! Tank
//            damage = random + tank.attack
//            champion2.life -= damage - champion2.defend()
//        }
//    }
    
    
    
//    if champion1.life > champion2.life {
//         champion1.kills += 1
//         champion2.deaths += 1
//         print("Victory: \(champion1.name) \nDefeat: \(champion2.name)")
//         print("C1 life: \(champion1.life), C2 life \(champion2.life)")
//    } else {
//         champion2.kills += 1
//         champion2.deaths += 1
//         print("Victory: \(champion1.name) \nDefeat: \(champion2.name)")
//         print("C1 life: \(champion1.life), C2 life \(champion2.life)")
//    }
}
