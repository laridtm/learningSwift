//
//  Fight.swift
//  lolFight
//
//  Created by Larissa Diniz  on 10/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Fight {
    
    var attacking: Champion
    var attacked: Champion
    
    init(attacking: Champion, attacked: Champion ) {
        self.attacking = attacking
        self.attacked = attacked
    }
    
    func fight() {
        // devolve o tipo da variavel
        let attackedType = type(of: attacked)
        let attackingType = type(of: attacking)
        
        if attackingType == Tank.self {
            //forca conversao do tipo para mage
            let tank = attacking as! Tank
            if attackedType == Mage.self {
                let mage = attacked as! Mage
                if mage.mana > 40 && tank.armor == false {
                    mage.kill()
                    tank.die()
                } else {
                    mage.die()
                    tank.kill()
                }
                
            } else if attackedType == Shooter.self {
                let shooter = attacked as! Shooter
                if tank.armor == true {
                    tank.kill()
                    shooter.die()
                } else {
                    tank.die()
                    shooter.kill()
                }
                
            } else if attackedType == Support.self {
                let support = attacked as! Support
                if support.shield && tank.armor == false {
                    support.kill()
                    tank.die()
                } else {
                    support.die()
                    tank.kill()
                }
            }
            
        } else if attackingType == Mage.self {
        
        
    }
}
