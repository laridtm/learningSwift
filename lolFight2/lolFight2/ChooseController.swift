//
//  ChooseController.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 22/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ChooseController: UIViewController {

    @IBOutlet weak var champion1: UIImageView!
    @IBOutlet weak var champion2: UIImageView!
    
    let lux = Mage(name: "Lux", life: 100, kills: 0, deaths: 0)
    let garen = Tank(name: "Garen", life: 100, kills: 0, deaths: 0)
    let missFortune = Shooter(name: "Miss Fortune", life: 100, kills: 0, deaths: 0)
    let taric = Support(name: "Taric", life: 100, kills: 0, deaths: 0)
    
    @IBAction func Lux(_ sender: UIButton) {
        champion1.image = UIImage(named: "lux3")
    }
    
    @IBAction func Taric(_ sender: UIButton) {
        champion1.image = UIImage(named: "taric")
    }
    
    @IBAction func Garen(_ sender: UIButton) {
        champion1.image = UIImage(named: "garen4")
    }
    
    @IBAction func Missfortune(_ sender: UIButton) {
        champion1.image = UIImage(named: "missFortune2")
    }
    
    @IBAction func Attack(_ sender: UIButton) {
        let fight1 = Fight.init(champion1: lux, champion2: garen)
        let champion1Winner = fight1.fight()
        
         
        
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any) {
        guard let showResultController = segue.destination as? ShowResultController else {return}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let random = Int.random(in: 0...3)
        
        if random == 0 {
            champion2.image = UIImage(named: "lux3")
        } else if random == 1 {
            champion2.image = UIImage(named: "taric")
        } else if random == 2 {
            champion2.image = UIImage(named: "garen4")
        } else if random == 3 {
            champion2.image = UIImage(named: "missFortune2")
        }
             
          
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
