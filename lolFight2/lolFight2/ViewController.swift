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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let fight1 = Fight.init(attacking: lux, attacked: garen)
        fight1.attack()
    }


}

