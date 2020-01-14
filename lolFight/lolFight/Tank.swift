//
//  Tank.swift
//  lolFight
//
//  Created by Larissa Diniz  on 10/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Tank: Champion {
    var name: String
    var alive: Bool
    var base: Bool
    var kills: Int
    var deaths: Int
    var armor: Bool
    
    init(name: String, alive: Bool, base: Bool, kills: Int, deaths: Int, armor: Bool) {
        self.name = name
        self.alive = alive
        self.base = base
        self.kills = kills
        self.deaths = deaths
        self.armor = armor
    }
    
    func die() {
        alive = false
        base = true
        deaths += 1
    }
    
    func toLive() {
        base = false
        alive = true
    }
    
    func kill() {
        kills += 1
    }
    
    func fight() {
        
    }
    
    
}
