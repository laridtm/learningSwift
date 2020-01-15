//
//  Fight.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 15/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Fight {
    var attacking: Champion
    var attacked: Champion
    var damage: Int = 0
    
    init(attacking: Champion, attacked: Champion) {
        self.attacking = attacking
        self.attacked = attacked
    }
    
    func fight() {
        let random = Int.random(in: 1...50)
        print(random)
        
        let attackingType = type(of: attacking)
        
        if attackingType == Mage.self {
            let mage = attacking as! Mage
            damage = random + mage.spell
            attacked.life -= damage - attacked.defend()
            
        } else if attackingType == Tank.self {
            let tank = attacking as! Tank
            damage = random + tank.attack
            attacked.life -= damage - attacked.defend()
        }
        
        if attacking.life > attacked.life {
            attacking.kills += 1
            attacked.deaths += 1
            print("Victory: \(attacking.name) \nDefeat: \(attacked.name)")
            print("C1 life: \(attacking.life), C2 life \(attacked.life)")
       } else {
            attacked.kills += 1
            attacked.deaths += 1
            print("Victory: \(attacking.name) \nDefeat: \(attacked.name)")
            print("C1 life: \(attacking.life), C2 life \(attacked.life)")
       }
    }
}
