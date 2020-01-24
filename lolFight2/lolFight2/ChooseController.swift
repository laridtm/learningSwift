//
//  ChooseController.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 22/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ChooseController: UIViewController {

    @IBOutlet weak var champion1Image: UIImageView!
    @IBOutlet weak var champion2Image: UIImageView!
    
    var champion1Winner : Bool = false
    var boot : Champion?
    var myChampion : Champion?
    
    let lux = Mage(name: "Lux", life: 100, kills: 0, deaths: 0)
    let garen = Tank(name: "Garen", life: 100, kills: 0, deaths: 0)
    let missFortune = Shooter(name: "Miss Fortune", life: 100, kills: 0, deaths: 0)
    let taric = Support(name: "Taric", life: 100, kills: 0, deaths: 0)
    
    @IBAction func Lux(_ sender: UIButton) {
        champion1Image.image = UIImage(named: "lux3")
        myChampion = lux
    }
    
    @IBAction func Taric(_ sender: UIButton) {
        champion1Image.image = UIImage(named: "taric")
        myChampion = taric
    }
    
    @IBAction func Garen(_ sender: UIButton) {
        champion1Image.image = UIImage(named: "garen4")
        myChampion = garen
    }
    
    @IBAction func Missfortune(_ sender: UIButton) {
        champion1Image.image = UIImage(named: "missFortune2")
        myChampion = missFortune
    }
    
    @IBAction func Attack(_ sender: UIButton) {
        let fight1 = Fight.init(champion1: myChampion!, champion2: boot!)
        champion1Winner = fight1.fight()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowResultSegue" {
        
            let result = segue.destination as! ShowResultController
            if champion1Winner {
                result.imageName = "vitoria"
            } else {
                result.imageName = "derrota"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let random = Int.random(in: 0...3)
        
        if random == 0 {
            champion2Image.image = UIImage(named: "lux3")
            boot = lux
        } else if random == 1 {
            champion2Image.image = UIImage(named: "taric")
            boot = taric
        } else if random == 2 {
            champion2Image.image = UIImage(named: "garen4")
            boot = garen
        } else if random == 3 {
            champion2Image.image = UIImage(named: "missFortune2")
            boot = missFortune
        }
             
    }

}
