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
    
    init(name: String, alive: Bool, classe: String, base: Bool) {
             self.name = name
             self.alive = alive
             self.classe = classe
             self.base = base
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
