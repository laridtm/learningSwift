//
//  Champion.swift
//  lolFight
//
//  Created by Larissa Diniz  on 10/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

protocol Champion: class {
    var name: String { get set }
    var alive: Bool { get set }
    var classe: String { get set }
    var base: Bool { get set }
    var kills: Int { get set }
    var deaths: Int { get set }
    
    func die()
    func toLive()
    func fight()
    func kill()
}
