//
//  Champion.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 15/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

protocol Champion {
    var name: String {get set}
    var life: Int {get set}
    var kill: Int {get set}
    var die: Int {get set}
    var deffense: Int {get set}
    
    func attack(random: Int)
    func random() -> Int
    
}
