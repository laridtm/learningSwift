//
//  ViewController.swift
//  lolFight
//
//  Created by Larissa Diniz  on 10/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let Garen = Tank(name: "Garen", alive: true, classe: "Tank", base: true, kills: 0, deaths: 0, armor: false)
    
    let Lux = Mage(name: "Lux", alive: true, classe: "Mage", base: true, kills: 0, deaths: 0, mana: 100)
    
    let missFortune = Shooter(name: "Miss Fortune", alive: true, classe: "Shooter", base: true, kills: 0, deaths: 0, ultimate: false)
    
    let tresh = Support(name: "Tresh", alive: true, classe: "Support", base: true, kills: 0, deaths: 0, shield: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fight = Fight(attacking: Garen, attacked: Lux)
        fight.fight()
    }

    
    
    
    
}

