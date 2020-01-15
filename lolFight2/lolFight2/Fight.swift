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
        let random = Int.random(in: 1...100)
        
        let attackingType = type(of: attacking)
        let attackedType = type(of: attacked)
        
        if attackingType == Mage.self {
            let mage = attacking as! Mage
            damage = random + mage.spell
            attacked.life -= damage - attacked.defend()
            
        } else if attackingType == Tank.self {
            let tank = attacking as! Tank
            damage = random + tank.attack
            attacked.life -= damage - attacked.defend()
        }
        
        if attackedType == Mage.self {
            let mage = attacked as! Mage
            
        } else if attackedType == Tank.self {
            let tank = attacked as! Tank
        }
        
        
    }
    
//    func fight() {
//        attacking.attack(random: attta)
//    }
}
