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
    var kill: Int
    var die: Int
    var spell: Int = 70
    var deffense: Int = 30
    
    init(name: String, life: Int, kill: Int, die: Int) {
        self.name = name
        self.life = life
        self.kill = kill
        self.die = die
    }
    
    func random() -> Int {
        var random = Int.random(in: 1...100)
        return random
    }

    func attack(random: Int) {
        let damage = random + spell
    }
    
}
