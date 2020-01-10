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
    var classe: String
    var base: Bool
    var kills: Int
    var deaths: Int
    var armor: Bool
    
    init(name: String, alive: Bool, classe: String, base: Bool, kills: Int, deaths: Int, armor: Bool) {
        self.name = name
        self.alive = alive
        self.classe = classe
        self.base = base
        self.kills = kills
        self.deaths = deaths
        self.armor = armor
    }
    
    func die() {
        <#code#>
    }
    
    func toLive() {
        <#code#>
    }
    
    func fight() {
        <#code#>
    }
    
    
}
