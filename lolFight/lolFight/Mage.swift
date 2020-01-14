//
//  Mage.swift
//  lolFight
//
//  Created by Larissa Diniz  on 10/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Mage: Champion {
    var name: String
    var alive: Bool
    var base: Bool
    var kills: Int
    var deaths: Int
    var mana: Int
    
    init(name: String, alive: Bool, base: Bool, kills: Int, deaths: Int, mana: Int) {
        self.name = name
        self.alive = alive
        self.base = base
        self.kills = kills
        self.deaths = deaths
        self.mana = mana
    }
    
    func die() {
        alive = false
        base = true
        deaths += 1
    }
    
    func toLive() {
        base = false
        alive = true
        mana = 100
    }
    
    func kill() {
        kills += 1 
    }
    
    func fight() {
        
    }
    
    
    
}
