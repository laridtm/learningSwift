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
    var mage: Mage
    var tank: Tank
    var shooter: Shooter
    var support: Support
    
    
    
    init( attacking: Champion, attacked: Champion, mage: Mage, tank: Tank, shooter: Shooter, support: Support ) {
        self.attacking = attacking
        self.attacked = attacked
        self.mage = mage
        self.tank = tank
        self.shooter = shooter
        self.support = support
    }
    
    func turnType() {
         // devolve o tipo da variavel
        let attackedType = type(of: attacked)
        let attackingType = type(of: attacking)
        
        if attackingType == Tank.self {
            tank = attacking as! Tank
        } else if attackingType == Mage.self {
            mage = attacking as! Mage
        } else if attackingType == Shooter.self {
            shooter = attacking as! Shooter
        } else if attackingType == Support.self {
            support = attacking as! Support
        }
        
        if attackedType == Tank.self {
            tank = attacked as! Tank
        } else if attackedType == Mage.self {
            mage = attacked as! Mage
        } else if attackedType == Shooter.self {
            shooter = attacked as! Shooter
        } else if attackedType == Support.self {
            support = attacked as! Support
        }
    }
    
    func fight() {
        turnType()
        let attackedType = type(of: attacked)
        let attackingType = type(of: attacking)
        
        if (attackingType == Tank.self && attackedType == Mage.self) || (attackingType == Mage.self && attackedType == Tank.self) {
            if mage.mana > 40 && tank.armor == false {
                mage.kill()
                tank.die()
            } else {
                mage.die()
                tank.kill()
            }
        } else if (attackingType == Tank.self && attackedType == Shooter.self) || (attackingType == Shooter.self && attackedType == Tank.self) {
            if tank.armor == true {
                tank.kill()
                shooter.die()
            } else {
                tank.die()
                shooter.kill()
            }
        } else if (attackingType == Support.self && attackedType == Tank.self) || (attackingType == Tank.self && attackedType == Support.self) {
            if support.shield && tank.armor == false {
                support.kill()
                tank.die()
            } else {
                support.die()
                tank.kill()
            }
        } else if (attackingType == Mage.self && attackedType == Shooter.self) || (attackingType == Shooter.self && attackedType == Mage.self) {
            if shooter.ultimate {
                shooter.kill()
                mage.die()
            } else {
                shooter.die()
                mage.kill()
            }
        } else if (attackingType == Mage.self && attackedType == Support.self) || (attackingType == Support.self && attackedType == Mage.self) {
            if support.shield == false {
                mage.kill()
                support.die()
            } else {
                mage.die()
                support.kill()
            }
        } else if (attackingType == Shooter.self && attackedType == Support.self) || (attackingType == Support.self && attackedType == Shooter.self) {
            if shooter.ultimate {
                shooter.kill()
                support.die()
            } else {
                shooter.die()
                support.kill()
            }
        }
    }
}
