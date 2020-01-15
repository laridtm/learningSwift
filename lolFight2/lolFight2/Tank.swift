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
    var kill: Int
    var die: Int
    var attack: Int = 40
    var armor: Int = 60
    
    init(name: String, life: Int, kill: Int, die: Int) {
        self.name = name
        self.life = life
        self.kill = kill
        self.die = die
    }
    
    func defend() -> Int {
        return armor
    }
    
//    func random() -> Int {
//        var random = Int.random(in: 1...100)
//        return random
//    }

//    func attack(attacked: Champion) {
//        var random = Int.random(in: 1...100)
//        let damage = random + attack
//        attacked.life -= (damage - attacked.armor)
//    }
    
}
