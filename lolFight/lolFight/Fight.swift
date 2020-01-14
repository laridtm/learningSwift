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
    
    init(attacking: Champion, attacked: Champion) {
        self.attacking = attacking
        self.attacked = attacked
    }
    
//    func turnTypeAttacking() -> Champion {
//         // devolve o tipo da variavel
//        let attackingType = type(of: attacking)
//
//        // muda o tipo da variavel
//        if attackingType == Tank.self {
//            var tank = attacking as! Tank
//            return tank
//        } else if attackingType == Mage.self {
//            var mage = attacking as! Mage
//            return mage
//        } else if attackingType == Shooter.self {
//            var shooter = attacking as! Shooter
//            return shooter
//        } else if attackingType == Support.self {
//            var support = attacking as! Support
//            return support
//        }
//    }
//
//    func turnTypeAttacked() -> Champion {
//        let attackedType = type(of: attacked)
//
//        if attackedType == Tank.self {
//            var tank = attacked as! Tank
//            return tank
//        } else if attackedType == Mage.self {
//            var mage = attacked as! Mage
//            return mage
//        } else if attackedType == Shooter.self {
//            var shooter = attacked as! Shooter
//            return shooter
//        } else if attackedType == Support.self {
//            var support = attacked as! Support
//            return support
//        }
//
//    }
    
    func fight() {
        let attackedType = type(of: attacked)
        let attackingType = type(of: attacking)
        
//       let attackedType = turnTypeAttacked()
//       let attackingType = turnTypeAttacking()
        
        if (attackingType == Tank.self && attackedType == Mage.self) || (attackingType == Mage.self && attackedType == Tank.self) {
            let tank = attacked as! Tank
            let mage = attacking as! Mage
            
//            turnTypeAttacked()
//            turnTypeAttacking()

            if mage.mana > 40 && tank.armor == false {
                mage.kill()
                tank.die()
                print("Vitória: \(mage.name), derrota: \(tank.name)")
            } else {
                mage.die()
                tank.kill()
                print("Vitória: \(tank.name), derrota: \(mage.name)")
            }
        } else if (attackingType == Tank.self && attackedType == Shooter.self) || (attackingType == Shooter.self && attackedType == Tank.self) {
            let tank = attacked as! Tank
            let shooter = attacking as! Shooter

            if tank.armor == true {
                tank.kill()
                shooter.die()
                print("Vitória: \(tank.name), derrota: \(shooter.name)")
            } else {
                tank.die()
                shooter.kill()
                print("Vitória: \(shooter.name), derrota: \(tank.name)")
            }
        } else if (attackingType == Support.self && attackedType == Tank.self) || (attackingType == Tank.self && attackedType == Support.self) {
            let tank = attacked as! Tank
            let support = attacking as! Support

            if support.shield && tank.armor == false {
                support.kill()
                tank.die()
                print("Vitória: \(support.name), derrota: \(tank.name)")
            } else {
                support.die()
                tank.kill()
                print("Vitória: \(tank.name), derrota: \(support.name)")
            }
        } else if (attackingType == Mage.self && attackedType == Shooter.self) || (attackingType == Shooter.self && attackedType == Mage.self) {
            let mage = attacked as! Mage
            let shooter = attacking as! Shooter

            if shooter.ultimate {
                shooter.kill()
                mage.die()
                print("Vitória: \(shooter.name), derrota: \(mage.name)")
            } else {
                shooter.die()
                mage.kill()
                print("Vitória: \(mage.name), derrota: \(shooter.name)")
            }
        } else if (attackingType == Mage.self && attackedType == Support.self) || (attackingType == Support.self && attackedType == Mage.self) {
            let mage = attacked as! Mage
            let support = attacking as! Support

            if support.shield == false {
                mage.kill()
                support.die()
                print("Vitória: \(mage.name), derrota: \(support.name)")
            } else {
                mage.die()
                support.kill()
                print("Vitória: \(mage.name), derrota: \(support.name)")
            }
        } else if (attackingType == Shooter.self && attackedType == Support.self) || (attackingType == Support.self && attackedType == Shooter.self) {
            let support = attacking as! Support
            let shooter = attacked as! Shooter

            if shooter.ultimate {
                shooter.kill()
                support.die()
                print("Vitória: \(shooter.name), derrota: \(support.name)")
            } else {
                shooter.die()
                support.kill()
                print("Vitória: \(support.name), derrota: \(shooter.name)")
            }
        }
    }
}
