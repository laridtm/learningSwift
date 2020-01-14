//
//  ViewController.swift
//  lolFight
//
//  Created by Larissa Diniz  on 10/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let garen = Tank(name: "Garen", alive: true, base: true, kills: 0, deaths: 0, armor: false)
    
    let lux = Mage(name: "Lux", alive: true, base: true, kills: 0, deaths: 0, mana: 100)
    
    let missFortune = Shooter(name: "Miss Fortune", alive: true, base: true, kills: 0, deaths: 0, ultimate: false)
    
    let tresh = Support(name: "Tresh", alive: true, base: true, kills: 0, deaths: 0, shield: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fight1 = Fight(attacking: lux, attacked: missFortune) //vitoria lux
        fight1.fight()
        
        let fight2 = Fight(attacking: tresh, attacked: lux) //vitoria lux
        fight2.fight()
        
        let fight3 = Fight(attacking: missFortune, attacked: garen) //vitoria miss
        fight3.fight()
        
        
    }

    
    
    
    
}

