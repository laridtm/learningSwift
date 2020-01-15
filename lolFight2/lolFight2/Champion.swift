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
    var kills: Int {get set}
    var deaths: Int {get set}
    
    func defend() -> Int
    func history()
}
