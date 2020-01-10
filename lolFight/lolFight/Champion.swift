//
//  Champion.swift
//  lolFight
//
//  Created by Larissa Diniz  on 10/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

protocol Champion {
    var name: String { get set }
    var alive: Bool { get set }
    var classe: String { get set }
    var base: Bool { get set }
    
    func die()
    func toLive()
    func fight()
}
