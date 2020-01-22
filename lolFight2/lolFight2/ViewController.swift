//
//  ViewController.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 15/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let lux = Mage(name: "Lux", life: 100, kills: 0, deaths: 0)
    let garen = Tank(name: "Garen", life: 100, kills: 0, deaths: 0)
    let missFortune = Shooter(name: "Miss Fortune", life: 100, kills: 0, deaths: 0)
    let taric = Support(name: "Taric", life: 100, kills: 0, deaths: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let fight1 = Fight.init(champion1: lux, champion2: garen)
        fight1.fight()

        let fight2 = Fight.init(champion1: missFortune, champion2: garen)
        fight2.fight()

        let fight3 = Fight.init(champion1: missFortune, champion2: taric)
        fight3.fight()
        
        garen.history()
        missFortune.history()
        lux.history()
        taric.history()
        
    }


}

